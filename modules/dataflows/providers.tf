# Non-secret cluster identifiers and endpoints come from var.confluent_cluster.
# All credentials are threaded through as sensitive variables from the root module.
#
# Flink is the exception: no flink_* attribute may be set here, and FLINK_*
# environment variables must be unset. When the provider has Flink settings it
# ignores each statement's compute_pool and principal, so every statement would
# run on one pool as one principal. Each statement instead gets its endpoint
# from var.confluent_cluster.flink_rest_endpoint and its key from
# var.flink_credentials.
provider "confluent" {
  kafka_id                      = var.confluent_cluster.kafka_cluster_id
  kafka_rest_endpoint           = var.confluent_cluster.kafka_rest_endpoint
  kafka_api_key                 = var.kafka_credentials.key
  kafka_api_secret              = var.kafka_credentials.secret
  schema_registry_id            = var.confluent_cluster.schema_registry_id
  schema_registry_rest_endpoint = var.confluent_cluster.schema_registry_rest_endpoint
  schema_registry_api_key       = var.schema_registry_credentials.key
  schema_registry_api_secret    = var.schema_registry_credentials.secret
}
