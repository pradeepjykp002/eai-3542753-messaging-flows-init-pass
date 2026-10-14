module "topic_tech-platforms_integration_enp-request_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration"
  data_domain   = "enp-request"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration_enp-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration"
  data_domain   = "enp-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration_rev_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration"
  data_domain   = "rev"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration_topic_cluster
  flink_credentials = var.flink_credentials
}
