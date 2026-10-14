module "topic_commercial_custom-critical_any-email-notification_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "any-email-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_any-ftm-fmqa-fic_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "any-ftm-fmqa-fic"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_crs-dispatch-unified_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "crs-dispatch-unified"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_email-notification-unified_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "email-notification-unified"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_lme-webservice_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "lme-webservice"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_ods-events_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "ods-events"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_ods-shared-view-publisher-business-events_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "ods-shared-view-publisher-business-events"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_ods-shared-view-publisher-table-changes-loadboard_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "ods-shared-view-publisher-table-changes-loadboard"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_ods-shared-view-publisher-table-changes-nds_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "ods-shared-view-publisher-table-changes-nds"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_ods-shared-view-publisher-table-changes-tds_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "ods-shared-view-publisher-table-changes-tds"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  data_domain   = "ods-shared-view-publisher-table-changes"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_custom-critical_topic_cluster
  flink_credentials = var.flink_credentials
}
