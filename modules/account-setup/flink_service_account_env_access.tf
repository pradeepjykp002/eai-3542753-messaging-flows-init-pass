# FlinkDeveloper for each subportfolio's Flink service account, without which
# the account cannot execute a statement at all. Scoped to the environment, so
# this is applied by the org admin in bootstrap phase 3 -- the env admin's
# CloudClusterAdmin only reaches bindings under its own Kafka cluster.

module "flink_service_account_env_access_back-office_hr" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_back-office_hr.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_back-office_imaging" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_back-office_imaging.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_ar-ap" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_ar-ap.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_billing" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_billing.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_custom-critical" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_custom-critical.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_customer-automation" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_customer-automation.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_international" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_international.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_other.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_commercial_rating" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_commercial_rating.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_operations_dock" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_operations_dock.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_operations_fleet-maintenance" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_operations_fleet-maintenance.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_operations_linehaul" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_operations_linehaul.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_operations_pickup-delivery" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_operations_pickup-delivery.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_operations_safety" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_operations_safety.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_tech-platforms_data-platforms" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_tech-platforms_data-platforms.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_tech-platforms_data-sefs" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_tech-platforms_data-sefs.service_account_id

  confluent_cluster = var.confluent_cluster
}

module "flink_service_account_env_access_tech-platforms_integration-other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-env-access"

  service_account_id = module.flink_service_account_tech-platforms_integration-other.service_account_id

  confluent_cluster = var.confluent_cluster
}
