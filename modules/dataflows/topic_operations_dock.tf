module "topic_operations_dock_cdc-cent-atop-sys-code_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdc-cent-atop-sys-code"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdc-equipment-route_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdc-equipment-route"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdc-linehaul-bid-hist_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdc-linehaul-bid-hist"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdc-shp-movement-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdc-shp-movement-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdc-tfmtb051_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdc-tfmtb051"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-af-calendar-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-af-calendar-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-af-calendar-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-af-calendar-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-appt-shipment-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-appt-shipment-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-cust-center-group-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-cust-center-group-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-cust-center-group-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-cust-center-group-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-cust-center-misc-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-cust-center-misc-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-cust-center-misc-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-cust-center-misc-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-equipment-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-equipment-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-equipment-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-equipment-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-location-master-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-location-master-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-location-master-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-location-master-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-ob-door-definition-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-ob-door-definition-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-ob-door-definition-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-ob-door-definition-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-pars-shipment-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-pars-shipment-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-pars-shipment-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-pars-shipment-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-ship-pickup-hist-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-ship-pickup-hist-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-ship-pickup-hist-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-ship-pickup-hist-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-item-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-item-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-item-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-item-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-load-to-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-load-to-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-load-to-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-load-to-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-location-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-location-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-location-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-location-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-route-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-route-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shipment-route-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shipment-route-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shp-delete-audit_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shp-delete-audit"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shp-distress_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shp-distress"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shp-movement_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shp-movement"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shp-value-audit-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shp-value-audit-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-shp-value-audit-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-shp-value-audit-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-suspense-load-to-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-suspense-load-to-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-suspense-load-to-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-suspense-load-to-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-tfmtb036-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-tfmtb036-dock-dest"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_cdcfxfle-tfmtb036-dybe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "cdcfxfle-tfmtb036-dybe"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_convey-edenbe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "convey-edenbe"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_dock-workershift_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "dock-workershift"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_dock_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "dock"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_eden-dnymt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "eden-dnymt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-dy-be-alerts-edenmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-dy-be-alerts-edenmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-dy-be-alerts_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-dy-be-alerts"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-edensv_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-edensv"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-equipment-trailer-history_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-equipment-trailer-history"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-equipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-equipment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-facility-edenmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-facility-edenmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-facility_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-facility"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-move-assignment-edenmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-move-assignment-edenmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-move-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-move-assignment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment-move-assignment-completed-rs_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment-move-assignment-completed-rs"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment-move-assignment-update_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment-move-assignment-update"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment-moves-for-driver-rs_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment-moves-for-driver-rs"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment-supactndest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment-supactndest"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment-update-trailer-location-rs_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment-update-trailer-location-rs"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment-worker-shift_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment-worker-shift"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-ode-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-ode-assignment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-unified_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-unified"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-work-assignment-edenmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-work-assignment-edenmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ops-work-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ops-work-assignment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_screen-shipment-during-transportation_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "screen-shipment-during-transportation"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_sefs-legacy-adapter-dock_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "sefs-legacy-adapter-dock"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-completion_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-completion"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-delivery_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-delivery"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-dimension_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-dimension"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-measur-rating_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-measur-rating"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-nba-shipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-nba-shipment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-reweigh_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-reweigh"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-screen_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-screen"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-app-notification-ship-movement_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-app-notification-ship-movement"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-dim-approval_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-dim-approval"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-dock-dest_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-dock-dest"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-fl-huevent_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-fl-huevent"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-hudim_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-hudim"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-inspection-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-inspection-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-inspection-revenue-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-inspection-revenue-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-sc-dock-dock-loc-cache_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-sc-dock-dock-loc-cache"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-sc-dock-equip-cache_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-sc-dock-equip-cache"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-sc-dock-linehaul-bid-hist_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-sc-dock-linehaul-bid-hist"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-sc-dock-shp-load-to-cache_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-sc-dock-shp-load-to-cache"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_ship-sc-dock_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "ship-sc-dock"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_dock_shipefs-outbound-adapter-dw-batch_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "dock"
  data_domain   = "shipefs-outbound-adapter-dw-batch"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_dock_topic_cluster
  flink_credentials = var.flink_credentials
}
