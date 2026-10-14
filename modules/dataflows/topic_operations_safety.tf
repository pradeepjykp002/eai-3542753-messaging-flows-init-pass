module "topic_operations_safety_cdc-ps-af-eff-driver_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "safety"
  data_domain   = "cdc-ps-af-eff-driver"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_safety_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_safety_hr-mobile-login_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "safety"
  data_domain   = "hr-mobile-login"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_safety_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_safety_hr-worker-status_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "safety"
  data_domain   = "hr-worker-status"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_safety_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_safety_server-discovery-reply_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "safety"
  data_domain   = "server-discovery-reply"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_safety_topic_cluster
  flink_credentials = var.flink_credentials
}
