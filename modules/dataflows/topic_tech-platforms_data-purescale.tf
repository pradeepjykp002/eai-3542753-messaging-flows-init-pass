module "topic_tech-platforms_data-purescale_cdc-dw_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-purescale"
  data_domain   = "cdc-dw"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-purescale_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-purescale"
  data_domain   = "cdc"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-purescale_topic_cluster
  flink_credentials = var.flink_credentials
}
