module "topic_back-office_finance_agencyinterface_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "finance"
  data_domain   = "agencyinterface"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_finance_topic_cluster
  flink_credentials = var.flink_credentials
}
