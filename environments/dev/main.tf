data "confluent_organization" "confluent_organization" {}

locals {
  env = "dev"

  # The Schema Registry cluster is pinned to the region of the first Kafka
  # cluster created in the environment and cannot be moved afterwards, so place
  # that cluster here when it is added.
  region = "centralus"

  confluent_cluster = {
    organization_id               = data.confluent_organization.confluent_organization.id
    environment_id                = module.confluent_environment.environment_id
    kafka_cluster_id              = module.enterprise_kafka_cluster.kafka_cluster_id
    kafka_rest_endpoint           = module.enterprise_kafka_cluster.rest_endpoint
    schema_registry_id            = module.enterprise_kafka_cluster.schema_registry_id
    schema_registry_rest_endpoint = module.enterprise_kafka_cluster.schema_registry_rest_endpoint
    flink_rest_endpoint           = module.enterprise_kafka_cluster.flink_rest_endpoint
    principal_id                  = var.principal_id
  }
}

module "confluent_environment" {
  source                              = "../../../eai-3542753-common-tools/terraform/environment"
  display_name                        = "Development"
  ingress_private_link_gateway_region = local.region
}

module "enterprise_kafka_cluster" {
  source         = "../../../eai-3542753-common-tools/terraform/enterprise-kafka-cluster"
  environment_id = module.confluent_environment.environment_id
  env            = local.env
}

module "account_setup" {
  source = "../../modules/account-setup"

  env               = local.env
  okta_issuer       = var.okta_issuer
  confluent_cluster = local.confluent_cluster
}

module "dataflows" {
  source = "../../modules/dataflows"

  env               = local.env
  confluent_cluster = local.confluent_cluster

  kafka_credentials           = { key = var.kafka_api_key, secret = var.kafka_api_secret }
  schema_registry_credentials = { key = var.schema_registry_api_key, secret = var.schema_registry_api_secret }
  flink_credentials           = { key = var.flink_api_key, secret = var.flink_api_secret }

  admin_compute_pool_id     = module.account_setup.admin_compute_pool_id
  flink_compute_pool_ids    = module.account_setup.flink_compute_pool_ids
  flink_service_account_ids = module.account_setup.flink_service_account_ids
  eai_identity_pool_ids     = module.account_setup.eai_identity_pool_ids
}
