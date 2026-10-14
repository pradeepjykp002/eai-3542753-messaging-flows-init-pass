module "topic_commercial_rating_driverpickup-reject_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "driverpickup-reject"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_driverpickup-retry_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "driverpickup-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_hr-driverpickup_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "hr-driverpickup"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating-comparator_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating-comparator"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating-das-reply_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating-das-reply"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating-das_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating-das"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating-fxf_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating-fxf"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating-path-orchestrator_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating-path-orchestrator"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating-rules-orchestrator_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating-rules-orchestrator"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_rev-rating_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "rev-rating"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_ship-app-notification-rating_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "ship-app-notification-rating"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_ship-event-monitor_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "ship-event-monitor"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_ship-reject_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "ship-reject"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_rating_ship-retry_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "rating"
  data_domain   = "ship-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_rating_topic_cluster
  flink_credentials = var.flink_credentials
}
