# TF_VAR_state_encryption_passphrase -- passphrase for OpenTofu state/plan encryption.
# Keep in the password manager: state cannot be read without it.
variable "state_encryption_passphrase" {
  type      = string
  sensitive = true
}

# TF_VAR_okta_issuer -- e.g. https://your-org.okta.com/oauth2/default
variable "okta_issuer" {
  type        = string
  description = "Okta OIDC issuer URL backing this configuration's identity provider"
}

# TF_VAR_principal_id -- the Terraform-apply-time principal (human or CI service
# account) granted the Assigner role on every generated Flink service account.
variable "principal_id" {
  type        = string
  description = "Confluent principal ID of the Terraform runner, granted Assigner on Flink service accounts"
}

# TF_VAR_kafka_api_key / TF_VAR_kafka_api_secret -- Kafka data plane credentials.
variable "kafka_api_key" {
  type      = string
  default   = ""
  sensitive = true
}

variable "kafka_api_secret" {
  type      = string
  default   = ""
  sensitive = true
}

# TF_VAR_schema_registry_api_key / TF_VAR_schema_registry_api_secret -- Schema Registry credentials.
variable "schema_registry_api_key" {
  type      = string
  default   = ""
  sensitive = true
}

variable "schema_registry_api_secret" {
  type      = string
  default   = ""
  sensitive = true
}

# TF_VAR_flink_api_key / TF_VAR_flink_api_secret -- Flink API key/secret scoped
# to the environment and region.
variable "flink_api_key" {
  type      = string
  default   = ""
  sensitive = true
}

variable "flink_api_secret" {
  type      = string
  default   = ""
  sensitive = true
}
