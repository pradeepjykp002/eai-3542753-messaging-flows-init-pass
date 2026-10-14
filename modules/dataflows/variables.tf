# Environment variables required to populate these root variables, via
# Terraform's native TF_VAR_<name> convention. Only flink_credentials is a
# secret -- see providers.tf for how the other credentials are configured.
#   TF_VAR_env
#   TF_VAR_confluent_cluster     -- JSON object, e.g.:
#     '{
#       "organization_id":               "...",
#       "environment_id":                "...",
#       "kafka_cluster_id":              "...",
#       "kafka_rest_endpoint":           "https://...",
#       "schema_registry_id":            "...",
#       "schema_registry_rest_endpoint": "https://...",
#       "flink_rest_endpoint":           "https://...",
#       "principal_id":                  "..."
#     }'
#     principal_id is the Terraform-apply-time principal (human or CI service
#     account) granted the Assigner role on every generated Flink service
#     account -- see terraform/flink-service-account-access.

variable "kafka_credentials" {
  type = object({
    key    = string
    secret = string
  })
  sensitive = true

  validation {
    condition     = var.kafka_credentials.key != "" && var.kafka_credentials.secret != ""
    error_message = "kafka_credentials.key and kafka_credentials.secret must not be empty"
  }
}

variable "schema_registry_credentials" {
  type = object({
    key    = string
    secret = string
  })
  sensitive = true

  validation {
    condition     = var.schema_registry_credentials.key != "" && var.schema_registry_credentials.secret != ""
    error_message = "schema_registry_credentials.key and schema_registry_credentials.secret must not be empty"
  }
}

variable "env" {
  type        = string
  description = "Environment name -- must be one of: dev, test, preprod, prod"

  validation {
    condition     = contains(["dev", "test", "preprod", "prod"], var.env)
    error_message = "env must be one of: dev, test, preprod, prod"
  }
}

variable "confluent_cluster" {
  type = object({
    organization_id               = string
    environment_id                = string
    kafka_cluster_id              = string
    kafka_rest_endpoint           = string
    schema_registry_id            = string
    schema_registry_rest_endpoint = string
    flink_rest_endpoint           = string
    principal_id                  = string
  })
  description = "Confluent identifiers and endpoints shared by every module instance in this configuration"
}

variable "admin_compute_pool_id" {
  type        = string
  description = "Compute pool ID for the shared admin pool, used by topic header-ALTER statements"
}

variable "flink_compute_pool_ids" {
  type        = map(string)
  description = "Map of subportfolio slug to Flink compute pool ID, keyed by portfolio_subportfolio slug"
}

variable "flink_service_account_ids" {
  type        = map(string)
  description = "Map of subportfolio slug to Flink service account ID, keyed by portfolio_subportfolio slug"
}

variable "eai_identity_pool_ids" {
  type        = map(string)
  description = "Map of EAI number (as string) to Confluent identity pool ID"
}

# TF_VAR_flink_credentials='{"key": "...", "secret": "..."}' -- a Flink API key
# scoped to the environment and region. Passed to each Flink statement rather
# than the provider; see providers.tf.
variable "flink_credentials" {
  type = object({
    key    = string
    secret = string
  })
  description = "Flink API key and secret used by every Flink statement"
  sensitive   = true

  validation {
    condition     = var.flink_credentials.key != "" && var.flink_credentials.secret != ""
    error_message = "flink_credentials.key and flink_credentials.secret must not be empty"
  }
}
