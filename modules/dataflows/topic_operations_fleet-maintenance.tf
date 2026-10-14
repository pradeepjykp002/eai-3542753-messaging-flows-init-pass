module "topic_operations_fleet-maintenance_cdc-equip-retry_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "cdc-equip-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_cdc-equip_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "cdc-equip"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_cdc-invoice-retry_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "cdc-invoice-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_cdc-voucher-payment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "cdc-voucher-payment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_convey-inbound-equip-fleet_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "convey-inbound-equip-fleet"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_convey-inbound-equip-lhms_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "convey-inbound-equip-lhms"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_convey-inbound-invoice-fleet_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "convey-inbound-invoice-fleet"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_fleet-maintenance_convey-inbound_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  data_domain   = "convey-inbound"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_fleet-maintenance_topic_cluster
  flink_credentials = var.flink_credentials
}
