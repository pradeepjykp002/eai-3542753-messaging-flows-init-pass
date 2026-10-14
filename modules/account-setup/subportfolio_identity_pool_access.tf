# DeveloperRead for each subportfolio pool across its own topic prefix. This
# blanket grant is what lets the per-EAI ACLs omit READ on topics in the EAI's
# own subportfolio.

module "subportfolio_identity_pool_access_back-office_finance" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "back-office"
  sub_portfolio    = "finance"
  identity_pool_id = module.subportfolio_identity_pool_back-office_finance.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_back-office_hr" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "back-office"
  sub_portfolio    = "hr"
  identity_pool_id = module.subportfolio_identity_pool_back-office_hr.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_back-office_imaging" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "back-office"
  sub_portfolio    = "imaging"
  identity_pool_id = module.subportfolio_identity_pool_back-office_imaging.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_ar-ap" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "ar-ap"
  identity_pool_id = module.subportfolio_identity_pool_commercial_ar-ap.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_billing" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "billing"
  identity_pool_id = module.subportfolio_identity_pool_commercial_billing.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_custom-critical" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "custom-critical"
  identity_pool_id = module.subportfolio_identity_pool_commercial_custom-critical.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_customer-automation" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "customer-automation"
  identity_pool_id = module.subportfolio_identity_pool_commercial_customer-automation.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_international" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "international"
  identity_pool_id = module.subportfolio_identity_pool_commercial_international.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_other" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "other"
  identity_pool_id = module.subportfolio_identity_pool_commercial_other.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_commercial_rating" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "commercial"
  sub_portfolio    = "rating"
  identity_pool_id = module.subportfolio_identity_pool_commercial_rating.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_operations_dock" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "operations"
  sub_portfolio    = "dock"
  identity_pool_id = module.subportfolio_identity_pool_operations_dock.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_operations_fleet-maintenance" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "operations"
  sub_portfolio    = "fleet-maintenance"
  identity_pool_id = module.subportfolio_identity_pool_operations_fleet-maintenance.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_operations_linehaul" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "operations"
  sub_portfolio    = "linehaul"
  identity_pool_id = module.subportfolio_identity_pool_operations_linehaul.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_operations_pickup-delivery" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "operations"
  sub_portfolio    = "pickup-delivery"
  identity_pool_id = module.subportfolio_identity_pool_operations_pickup-delivery.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_operations_safety" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "operations"
  sub_portfolio    = "safety"
  identity_pool_id = module.subportfolio_identity_pool_operations_safety.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_tech-platforms_data-platforms" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "tech-platforms"
  sub_portfolio    = "data-platforms"
  identity_pool_id = module.subportfolio_identity_pool_tech-platforms_data-platforms.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_tech-platforms_data-purescale" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "tech-platforms"
  sub_portfolio    = "data-purescale"
  identity_pool_id = module.subportfolio_identity_pool_tech-platforms_data-purescale.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_tech-platforms_data-sefs" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "tech-platforms"
  sub_portfolio    = "data-sefs"
  identity_pool_id = module.subportfolio_identity_pool_tech-platforms_data-sefs.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_tech-platforms_integration" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "tech-platforms"
  sub_portfolio    = "integration"
  identity_pool_id = module.subportfolio_identity_pool_tech-platforms_integration.identity_pool_id

  confluent_cluster = var.confluent_cluster
}

module "subportfolio_identity_pool_access_tech-platforms_integration-other" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool-access"

  env              = var.env
  portfolio        = "tech-platforms"
  sub_portfolio    = "integration-other"
  identity_pool_id = module.subportfolio_identity_pool_tech-platforms_integration-other.identity_pool_id

  confluent_cluster = var.confluent_cluster
}
