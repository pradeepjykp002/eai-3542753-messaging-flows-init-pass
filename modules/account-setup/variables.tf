variable "env" {
  type        = string
  description = "Environment name -- must be one of: dev, test, preprod, prod"

  validation {
    condition     = contains(["dev", "test", "preprod", "prod"], var.env)
    error_message = "env must be one of: dev, test, preprod, prod"
  }
}

variable "okta_issuer" {
  type        = string
  description = "Okta OIDC issuer URL backing this configuration's identity provider -- see terraform/identity-provider"
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
