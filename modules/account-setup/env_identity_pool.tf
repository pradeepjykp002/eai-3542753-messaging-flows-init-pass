# The environment-wide identity pool. What it may read is granted in
# env_identity_pool_access.tf.

module "env_identity_pool" {
  source = "../../../eai-3542753-common-tools/terraform/env-identity-pool"

  env                  = var.env
  identity_provider_id = module.identity_provider.identity_provider_id
}
