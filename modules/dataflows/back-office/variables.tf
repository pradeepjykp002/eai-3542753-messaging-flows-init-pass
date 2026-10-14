variable "env" {
  type        = string
  description = "Environment name"

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
  description = "Confluent identifiers and endpoints shared by every module instance"
}

variable "admin_compute_pool_id" {
  type        = string
  description = "Flink compute pool used for topic header-ALTER statements"
}

variable "flink_credentials" {
  type = object({
    key    = string
    secret = string
  })
  description = "Flink API credentials for topic header-ALTER statements"
  sensitive   = true
}
