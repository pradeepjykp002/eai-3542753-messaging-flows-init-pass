# eai-3542753-messaging-flows

Terraform/OpenTofu module structure for managing Confluent Kafka messaging flows across portfolios.

## Prerequisites

Contributors must have the following tools installed:

### OpenTofu ≥ 1.12

OpenTofu is used in place of the Terraform CLI for all IaC commands.

```bash
brew install opentofu
```

Verify:

```bash
tofu version
```

### Make ≥ 3.81

Used to run common development tasks. Ships with macOS; no installation needed on most systems.

Verify:

```bash
make --version
```

### Confluent CLI

Used to create the Kafka and Flink API keys for a new environment.

```bash
brew install confluentinc/tap/cli
confluent login
```

### eai-3542753-common-tools checkout

Module sources point at a local checkout of `eai-3542753-common-tools`, cloned
next to this repo:

```
Source/
├── eai-3542753-common-tools/
└── eai-3542753-messaging-flows/
```

## Credentials

Two credential files cover the two personas used during a deployment:

- **`env.bootstrap.sh`** — org admin API key; needed for the three bootstrap phases that create infrastructure the env admin account will later own.
- **`env.sh`** — env admin API key plus Kafka, Schema Registry and Flink credentials; needed from phase 4 (full apply) onwards.

Both are gitignored. Create them from the template and fill in secrets:

```bash
cp env.sh.template env.sh
```

Source the appropriate file in each terminal before running `make`:

```bash
source env.bootstrap.sh   # phases 1-3
source env.sh             # phase 4+
```

### env.bootstrap.sh variables

| Variable | What it is |
|---|---|
| `CONFLUENT_CLOUD_API_KEY` / `_SECRET` | **Org admin** cloud API key (Administration → Cloud API keys). Read directly from the OS environment — not a `TF_VAR_`. |
| `TF_VAR_state_encryption_passphrase` | Passphrase for OpenTofu state/plan encryption. Get from the password manager; state cannot be read without it. |
| `TF_VAR_okta_issuer` | Okta custom authorization server URL, e.g. `https://your-org.oktapreview.com/oauth2/ausXXX`. |
| `TF_VAR_principal_id` | Confluent service account ID of the Terraform runner (the org admin SA). Granted `Assigner` on all Flink service accounts. |

### env.sh variables

Same as `env.bootstrap.sh`, plus:

| Variable | What it is |
|---|---|
| `TF_VAR_kafka_api_key` / `_secret` | Kafka API key scoped to the environment's cluster, owned by the **env admin** service account |
| `TF_VAR_schema_registry_api_key` / `_secret` | Schema Registry API key for the environment, owned by the **env admin** service account |
| `TF_VAR_flink_api_key` / `_secret` | Flink API key scoped to the environment and cluster region, owned by the **env admin** service account |

## Creating a new environment

A new environment must be built in phases because later phases depend on resources that earlier phases create.

### Phase 1 — Confluent environment

Uses **org admin** credentials.

```bash
source env.bootstrap.sh
make bootstrap-phase1-dev
```

Creates the Confluent environment and its Private Link ingress gateway. Review the plan and approve.

### Phase 2 — Enterprise Kafka cluster

Uses **org admin** credentials.

```bash
source env.bootstrap.sh
make bootstrap-phase2-dev
```

Creates the enterprise Kafka cluster. Confluent also provisions a Schema Registry cluster automatically alongside it; both IDs are available as Terraform state outputs once this completes.

### Phase 3 — Account setup

Uses **org admin** credentials.

```bash
source env.bootstrap.sh
make bootstrap-phase3-dev
```

Creates the `account_setup` module in full:
- The Okta identity provider and all identity pools (env, subportfolio, and EAI)
- The env admin and Dynatrace service accounts, with their RBAC grants (FlinkDeveloper on the env, CloudClusterAdmin on the cluster, ResourceOwner on Schema Registry, MetricsViewer for Dynatrace)
- All subportfolio Flink service accounts, and the environment-scoped `FlinkDeveloper` each one needs before it can execute any statement
- All Flink compute pools (one per subportfolio, plus the shared admin pool)

Every environment-scoped role binding is created here rather than in phase 4, because granting at environment scope requires `EnvironmentAdmin` — which the env admin deliberately does not hold. The Flink service accounts' cluster-scoped grants stay in `dataflows` and are applied in phase 4, where `CloudClusterAdmin` is enough.

### Generate env admin API keys

After phase 3 completes, the env admin service account exists. Create three API keys owned by it — one per data plane — using the Confluent CLI. Look up the IDs you need from Terraform state first:

```bash
# Environment and cluster IDs
tofu -chdir=environments/dev state show 'module.confluent_environment.confluent_environment.this' | grep ' id '
tofu -chdir=environments/dev state show 'module.enterprise_kafka_cluster.confluent_kafka_cluster.this' | grep ' id '

# Schema Registry ID and region
tofu -chdir=environments/dev state show 'module.enterprise_kafka_cluster.data.confluent_schema_registry_cluster.this' | grep -E ' (id|region) '

# Env admin service account ID
tofu -chdir=environments/dev state show 'module.account_setup.module.env_admin_service_account.confluent_service_account.this' | grep ' id '
```

Then create the keys (replace `<sa-id>`, `<lkc-id>`, `<sr-id>`, `<env-id>`, `<region>` with the values above):

```bash
# Kafka API key
confluent api-key create \
  --resource <lkc-id> \
  --service-account <sa-id> \
  --description "dev env admin kafka key"

# Schema Registry API key
confluent api-key create \
  --resource <sr-id> \
  --service-account <sa-id> \
  --description "dev env admin schema registry key"

# Flink API key (cloud is lowercase: azure, aws, gcp)
confluent api-key create \
  --resource flink \
  --cloud azure \
  --region <region> \
  --environment <env-id> \
  --service-account <sa-id> \
  --description "dev env admin flink key"
```

Put each key and secret into `env.sh` under the appropriate `TF_VAR_` name.

> A newly created API key can take a minute or two to propagate. A `401 Unauthorized` on the first apply after this step usually clears on retry.

### Phase 4 — Full apply

Uses **env admin** credentials (all data plane keys now populated in `env.sh`).

```bash
source env.sh
make apply-dev
```

This applies topics, Flink statements, ACLs, EAI identity pool access grants, and everything else in the `dataflows` module.

> `apply-dev` targets `module.dataflows` deliberately. The env admin cannot read environment-scoped role bindings, so refreshing `account_setup` with these credentials makes the provider report those bindings as absent — OpenTofu then drops them from state and fails `403` trying to recreate them. Keeping `account_setup` out of the refresh avoids that; it belongs to phase 3 and the org admin.

## State

`environments/dev` uses a local backend while the remote state storage account is being provisioned. State files are committed to the repo so the team shares a consistent view of deployed infrastructure.

State and plan files are encrypted (OpenTofu state encryption). The passphrase is `TF_VAR_state_encryption_passphrase` in the credential files; get it from the password manager. Without it, no `plan` or `apply` can read state.

To migrate to Azure Blob Storage once the storage account exists, swap the backend blocks in `environments/<env>/backend.tf` so `azurerm` is active, then run:

```bash
tofu -chdir=environments/<env> init -migrate-state
```

## Module structure

```
modules/
  account-setup/   infrastructure the env admin account will own:
                   identity provider + pools, service accounts, compute pools
  dataflows/       Kafka topics, Flink statements, ACL and identity pool access grants
environments/
  dev/             root module for the dev environment; wires account-setup + dataflows
```

`module.account_setup` outputs the IDs it creates (compute pool IDs, service account IDs, identity pool IDs). `module.dataflows` receives them as input variables, so neither module has a hard dependency on the other at the Terraform level — but dataflows must be applied after account_setup in practice.

## Development tasks

All tasks run from the repo root via `make`.

| Command | Description |
|---|---|
| `make fmt` | Format all `.tf` files recursively |
| `make validate-dev` | Initialise and validate the dev environment |
| `make test` | Run the `modules/dataflows` unit tests (no real Confluent credentials needed) |
| `make bootstrap-phase1-dev` | Phase 1: create the Confluent environment |
| `make bootstrap-phase2-dev` | Phase 2: create the Kafka cluster |
| `make bootstrap-phase3-dev` | Phase 3: create the account-setup module (service accounts, pools, identity) |
| `make plan-dev` | Plan the full dev environment |
| `make apply-dev` | Apply the full dev environment without a confirmation prompt |
| `make upgrade` | Re-resolve providers and update lock files across all modules — run when a provider version constraint changes |
