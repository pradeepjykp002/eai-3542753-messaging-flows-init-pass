# One identity pool per subportfolio that owns topics. The topic prefix each
# may read is granted in subportfolio_identity_pool_access.tf.

module "subportfolio_identity_pool_back-office_finance" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "finance"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_back-office_hr" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "hr"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_back-office_imaging" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_ar-ap" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_billing" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_custom-critical" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_customer-automation" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "customer-automation"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_international" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "international"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_other" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "other"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_commercial_rating" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_operations_dock" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_operations_fleet-maintenance" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "fleet-maintenance"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_operations_linehaul" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_operations_pickup-delivery" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_operations_safety" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "safety"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_tech-platforms_data-platforms" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-platforms"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_tech-platforms_data-purescale" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-purescale"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_tech-platforms_data-sefs" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_tech-platforms_integration" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "subportfolio_identity_pool_tech-platforms_integration-other" {
  source = "../../../eai-3542753-common-tools/terraform/subportfolio-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration-other"
  identity_provider_id = module.identity_provider.identity_provider_id
}
