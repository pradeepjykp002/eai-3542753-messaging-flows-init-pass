module "topic_operations_linehaul_cdc-kronos_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "cdc-kronos"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_convey-audit_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "convey-audit"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_convey_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "convey"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_hr-road_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "hr-road"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_hr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "hr"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ops-edenmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ops-edenmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ops-move-assignment-road_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ops-move-assignment-road"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_screen-shipment-during-transportation-cmqt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "screen-shipment-during-transportation-cmqt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_screen-shipment-during-transportation-csqt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "screen-shipment-during-transportation-csqt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-network-integration-checks_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-network-integration-checks"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 40, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-network_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-network"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 40, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-roadhh-lhm_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-roadhh-lhm"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-roadhh_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-roadhh"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-rte-remain_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-rte-remain"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 40, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-rte-req-lta_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-rte-req-lta"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 40, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-rte-req_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-rte-req"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 40, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship-traceaudit_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship-traceaudit"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 40, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "linehaul"
  data_domain   = "ship"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_linehaul_topic_cluster
  flink_credentials = var.flink_credentials
}
