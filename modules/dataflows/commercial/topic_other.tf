module "topic_commercial_other_rev-dynamic-jcl_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "other"
  data_domain   = "rev-dynamic-jcl"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_other_topic_cluster
  flink_credentials = var.flink_credentials
}
