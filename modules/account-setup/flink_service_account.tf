# One Flink service account per subportfolio that runs Flink statements. The
# roles each account needs are granted in flink_service_account_access.tf.

module "flink_service_account_back-office_hr" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "hr"
}

module "flink_service_account_back-office_imaging" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
}

module "flink_service_account_commercial_ar-ap" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "ar-ap"
}

module "flink_service_account_commercial_billing" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
}

module "flink_service_account_commercial_custom-critical" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
}

module "flink_service_account_commercial_customer-automation" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
}

module "flink_service_account_commercial_international" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "international"
}

module "flink_service_account_commercial_other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "other"
}

module "flink_service_account_commercial_rating" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
}

module "flink_service_account_operations_dock" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
}

module "flink_service_account_operations_fleet-maintenance" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
}

module "flink_service_account_operations_linehaul" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
}

module "flink_service_account_operations_pickup-delivery" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
}

module "flink_service_account_operations_safety" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "safety"
}

module "flink_service_account_tech-platforms_data-platforms" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
}

module "flink_service_account_tech-platforms_data-sefs" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
}

module "flink_service_account_tech-platforms_integration-other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
}
