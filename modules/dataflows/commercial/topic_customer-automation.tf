module "topic_commercial_customer-automation_esdsu-cvd-fxfd-trac_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "esdsu-cvd-fxfd-trac"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_esdsu-cvd-reject_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "esdsu-cvd-reject"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_sdms-cevnt_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "sdms-cevnt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_sdms-edw_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "sdms-edw"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_sdms-epdi_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "sdms-epdi"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_sdms-shipment-data_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "sdms-shipment-data"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_sdms-visa_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "sdms-visa"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_trackingnbr-atl_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "trackingnbr-atl"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_trackingnbr-edcw_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "trackingnbr-edcw"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_trackingnbr-las_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "trackingnbr-las"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_trackingnbr-wtc_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "trackingnbr-wtc"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_customer-automation_trackingnbr_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  data_domain   = "trackingnbr"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_customer-automation_topic_cluster
  flink_credentials = var.flink_credentials
}
