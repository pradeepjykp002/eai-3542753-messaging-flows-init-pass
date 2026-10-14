module "topic_commercial_billing_autocoder-autocode_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "autocoder-autocode"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_autocoder-coding_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "autocoder-coding"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_autocoder-custassign_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "autocoder-custassign"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_autocoder-reject_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "autocoder-reject"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_autocoder-retry_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "autocoder-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_autocoder_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "autocoder"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_cdc-drv-sts-from-plato_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "cdc-drv-sts-from-plato"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_cdc-pickup-stop-cmt_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "cdc-pickup-stop-cmt"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_cdc-pickup-stop-req_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "cdc-pickup-stop-req"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-afbc_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-afbc"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-app-notification-pkup-conf_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-app-notification-pkup-conf"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-broker-inclusive_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-broker-inclusive"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-coding_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-coding"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-dim-adjust_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-dim-adjust"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-generate-ebol_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-generate-ebol"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_commercial_billing_ship-reweigh-adjust_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "commercial"
  sub_portfolio = "billing"
  data_domain   = "ship-reweigh-adjust"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.commercial_billing_topic_cluster
  flink_credentials = var.flink_credentials
}
