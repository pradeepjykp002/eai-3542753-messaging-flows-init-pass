module "topic_commercial_international_rev-mxfolio_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "international"
  data_domain   = "rev-mxfolio"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_international_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_international_ship-cim_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "international"
  data_domain   = "ship-cim"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_international_topic_cluster
  flink_credentials = var.flink_credentials
}
