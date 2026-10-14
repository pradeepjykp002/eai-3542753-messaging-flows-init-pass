# One Flink compute pool per subportfolio that owns topics, plus one shared
# admin pool for topic header-ALTER statements. max_cfu for subportfolio pools
# is sized to their statement-set count rounded up to a valid pool size; a
# subportfolio whose only Flink work is its topics' header-ALTER statements
# gets the smallest pool.

module "admin_compute_pool" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "admin"
  sub_portfolio = "topics"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_back-office_finance" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "finance"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_back-office_hr" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "hr"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_back-office_imaging" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  max_cfu       = 20

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_ar-ap" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "ar-ap"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_billing" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_custom-critical" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  max_cfu       = 10

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_customer-automation" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_international" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "international"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "other"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_commercial_rating" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_operations_dock" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  max_cfu       = 20

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_operations_fleet-maintenance" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_operations_linehaul" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  max_cfu       = 10

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_operations_pickup-delivery" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  max_cfu       = 10

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_operations_safety" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "safety"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_tech-platforms_data-platforms" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_tech-platforms_data-purescale" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-purescale"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_tech-platforms_data-sefs" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  max_cfu       = 10

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_tech-platforms_integration" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration"
  max_cfu       = 5

  confluent_cluster = var.confluent_cluster
}

module "flink_compute_pool_tech-platforms_integration-other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-compute-pool"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  max_cfu       = 10

  confluent_cluster = var.confluent_cluster
}
