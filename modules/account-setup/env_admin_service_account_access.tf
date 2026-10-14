# RBAC for the Terraform admin service account: FlinkDeveloper on the environment
# and Assigner on every subportfolio Flink service account.

module "env_admin_service_account_access" {
  source = "../../../eai-3542753-common-tools/terraform/env-admin-service-account-access"

  principal_id = module.env_admin_service_account.service_account_id

  flink_service_account_ids = {
    "back-office_hr"                   = module.flink_service_account_back-office_hr.service_account_id
    "back-office_imaging"              = module.flink_service_account_back-office_imaging.service_account_id
    "commercial_ar-ap"                 = module.flink_service_account_commercial_ar-ap.service_account_id
    "commercial_billing"               = module.flink_service_account_commercial_billing.service_account_id
    "commercial_custom-critical"       = module.flink_service_account_commercial_custom-critical.service_account_id
    "commercial_customer-automation"   = module.flink_service_account_commercial_customer-automation.service_account_id
    "commercial_international"         = module.flink_service_account_commercial_international.service_account_id
    "commercial_other"                 = module.flink_service_account_commercial_other.service_account_id
    "commercial_rating"                = module.flink_service_account_commercial_rating.service_account_id
    "operations_dock"                  = module.flink_service_account_operations_dock.service_account_id
    "operations_fleet-maintenance"     = module.flink_service_account_operations_fleet-maintenance.service_account_id
    "operations_linehaul"              = module.flink_service_account_operations_linehaul.service_account_id
    "operations_pickup-delivery"       = module.flink_service_account_operations_pickup-delivery.service_account_id
    "operations_safety"                = module.flink_service_account_operations_safety.service_account_id
    "tech-platforms_data-platforms"    = module.flink_service_account_tech-platforms_data-platforms.service_account_id
    "tech-platforms_data-sefs"         = module.flink_service_account_tech-platforms_data-sefs.service_account_id
    "tech-platforms_integration-other" = module.flink_service_account_tech-platforms_integration-other.service_account_id
  }

  confluent_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = module.admin_compute_pool.compute_pool_id
  })
}
