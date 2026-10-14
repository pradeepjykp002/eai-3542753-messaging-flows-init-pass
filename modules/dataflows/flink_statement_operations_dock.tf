module "flink_statement_set_operations_dock_from_topic_operations_dock_dock_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_dock_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_dock-workershift_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'KRONOS'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-dy-be-alerts_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-dy-be-alerts_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-dy-be-alerts-edenmt_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'SUPERVISOR_ACTION'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-edensv_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-edensv_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-unified_xml.topic_name },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-equipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-equipment_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-equipment-trailer-history_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'TRLR-HIST'" },
    { topic = module.topic_operations_dock_ops-unified_xml.topic_name },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-facility_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-facility_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-facility-edenmt_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'HISTORY'" },
    { topic = module.topic_operations_dock_ops-unified_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') IN ('DOOR', 'BAY')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-move-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-move-assignment_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-move-assignment-edenmt_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'MOVE-ACTION'" },
    { topic = module.topic_operations_dock_ops-unified_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'MOVE'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-ode-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-ode-assignment_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-ode-assignment-move-assignment-completed-rs_xml.topic_name, filter = "DECODE(headers[ENCODE('messageID', 'UTF-8')], 'UTF-8') = '122'" },
    { topic = module.topic_operations_dock_ops-ode-assignment-move-assignment-update_xml.topic_name, filter = "DECODE(headers[ENCODE('messageID', 'UTF-8')], 'UTF-8') = '40'" },
    { topic = module.topic_operations_dock_ops-ode-assignment-moves-for-driver-rs_xml.topic_name, filter = "DECODE(headers[ENCODE('messageID', 'UTF-8')], 'UTF-8') = '120'" },
    { topic = module.topic_operations_dock_ops-ode-assignment-supactndest_xml.topic_name, filter = "DECODE(headers[ENCODE('messageID', 'UTF-8')], 'UTF-8') = '130'" },
    { topic = module.topic_operations_dock_ops-ode-assignment-update-trailer-location-rs_xml.topic_name, filter = "DECODE(headers[ENCODE('messageID', 'UTF-8')], 'UTF-8') = '126'" },
    { topic = module.topic_operations_dock_ops-ode-assignment-worker-shift_xml.topic_name, filter = "DECODE(headers[ENCODE('messageID', 'UTF-8')], 'UTF-8') = '41'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ops-work-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ops-work-assignment_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-unified_xml.topic_name },
    { topic = module.topic_operations_dock_ops-work-assignment-edenmt_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'WORK'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_dock_ship-sc-dock_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_dock_ship-sc-dock_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ship-sc-dock-dock-loc-cache_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'DOC_LOC_CACHE'" },
    { topic = module.topic_operations_dock_ship-sc-dock-equip-cache_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'EQUIP_CACHE'" },
    { topic = module.topic_operations_dock_ship-sc-dock-linehaul-bid-hist_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'LINEHAUL_BID_HIST'" },
    { topic = module.topic_operations_dock_ship-sc-dock-shp-load-to-cache_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'SHP_LOAD_TO_CACHE'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_linehaul_convey_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_linehaul_convey_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_convey-edenbe_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') IN ('DOOR', 'BAY', 'YARD')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_linehaul_ops-edenmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_linehaul_ops-edenmt_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ops-move-assignment-edenmt_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') IN ('MOVE-PND', 'MOVE-ROAD')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ship-dim-approval_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DIM_APVL'" },
    { topic = module.topic_operations_dock_ship-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'SLAT'" },
    { topic = module.topic_operations_dock_ship-fl-huevent_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'ForkliftEvent'" },
    { topic = module.topic_operations_dock_ship-hudim_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DIM' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'HANDLING_UNIT'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_cdc-cent-atop-sys-code_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PWX' OR (DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CENT_ATOP_SYS_CODE')" },
    { topic = module.topic_operations_dock_cdc-equipment-route_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PWX' OR (DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'EQUIPMENT_ROUTE')" },
    { topic = module.topic_operations_dock_cdc-linehaul-bid-hist_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PWX' OR (DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'LINEHAUL_BID_HIST')" },
    { topic = module.topic_operations_dock_cdc-shp-movement-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PWX' OR (DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_MOVEMENT')" },
    { topic = module.topic_operations_dock_cdc-tfmtb051_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PWX' OR (DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB051')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_tech-platforms_data-sefs_cdcfxfle_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_tech-platforms_data-sefs_cdcfxfle_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_cdcfxfle-af-calendar-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'AF_CALENDAR' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-af-calendar-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'AF_CALENDAR' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-appt-shipment-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'APPT_SHIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-cust-center-group-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CENTER_GROUP' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-cust-center-group-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CENTER_GROUP' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-cust-center-misc-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CENTER_MISC' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-cust-center-misc-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CENTER_MISC' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-equipment-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'EQUIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-equipment-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'EQUIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-location-master-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'LOCATION_MASTER' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-location-master-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'LOCATION_MASTER' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-ob-door-definition-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'OB_DOOR_DEFINITION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-ob-door-definition-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'OB_DOOR_DEFINITION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-pars-shipment-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PARS_SHIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-pars-shipment-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PARS_SHIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-ship-pickup-hist-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIP_PICKUP_HIST' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-ship-pickup-hist-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIP_PICKUP_HIST' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-item-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ITEM' AND (DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') <> 'NMFC-SHIP' OR headers[ENCODE('FX_eventCode', 'UTF-8')] IS NULL) AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-item-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ITEM' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-load-to-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOAD_TO' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-load-to-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOAD_TO' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-location-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOCATION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-location-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOCATION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-route-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ROUTE' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shipment-route-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ROUTE' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shp-delete-audit_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_DELETE_AUDIT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shp-distress_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_DISTRESS' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shp-value-audit-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_VALUE_AUDIT' AND DECODE(headers[ENCODE('FX_ActivityCode', 'UTF-8')], 'UTF-8') = 'STAT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-shp-value-audit-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_VALUE_AUDIT' AND DECODE(headers[ENCODE('FX_ActivityCode', 'UTF-8')], 'UTF-8') = 'STAT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-suspense-load-to-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SUSPENSE_LOAD_TO' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-suspense-load-to-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SUSPENSE_LOAD_TO' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-tfmtb036-dock-dest_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB036' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_operations_dock_cdcfxfle-tfmtb036-dybe_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB036' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_tech-platforms_data-sefs_sefs-legacy-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_tech-platforms_data-sefs_sefs-legacy-adapter_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_sefs-legacy-adapter-dock_xml.topic_name, filter = "DECODE(headers[ENCODE('carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'CoreShipmentChange' AND DECODE(headers[ENCODE('recordType', 'UTF-8')], 'UTF-8') = 'SHIPMENT' AND (DECODE(headers[ENCODE('messageSubType', 'UTF-8')], 'UTF-8') = 'CONSOLIDATION' OR DECODE(headers[ENCODE('eventSubType', 'UTF-8')], 'UTF-8') = 'OSD')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_ship-app-notification-completion_xml.topic_name, filter = "DECODE(headers[ENCODE('eventType', 'UTF-8')], 'UTF-8') = 'RECORD_COMPLETION' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF'" },
    { topic = module.topic_operations_dock_ship-app-notification-delivery_xml.topic_name, filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('DELIVERY') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('DELIVERED', 'DELIVERED_WITH_EXCEPTION')" },
    { topic = module.topic_operations_dock_ship-app-notification-dimension_xml.topic_name, filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('REVENUE') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('DIMENSIONS')" },
    { topic = module.topic_operations_dock_ship-app-notification-measur-rating_xml.topic_name, filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('REVENUE', 'LEGACY_SHIPMENT_DATA') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('RATING')" },
    { topic = module.topic_operations_dock_ship-app-notification-nba-shipment_xml.topic_name, filter = "DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND (DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'CONSOLIDATION' OR (DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'DELIVERY' AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('DELIVERED', 'DELIVERED_WITH_EXCEPTION', 'UNDELIVERED')) OR (DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'PICKUP' AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('PICKUP', 'DOCK_DROP', 'PICKUP_EXCEPTION', 'DISASSOCIATE_RFID', 'ASSOCIATE')))" },
    { topic = module.topic_operations_dock_ship-app-notification-reweigh_xml.topic_name, filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('REVENUE') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('REWEIGH')" },
    { topic = module.topic_operations_dock_ship-app-notification-screen_xml.topic_name, filter = "(DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('CONSOLIDATION') OR (DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('DELIVERY') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('DELIVERED', 'APPOINTMENT')) OR (DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('PICKUP') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('PICKUP', 'ASSOCIATE')) OR DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('REWEIGH', 'DIMENSIONS', 'RECORD_COMPLETION', 'RATING', 'CORRECTION')) AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF'" },
    { topic = module.topic_operations_dock_ship-app-notification-ship-movement_xml.topic_name, filter = "DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND ((DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'CONSOLIDATION' AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('ADD_TO_CONSOLIDATION')) OR (DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'PICKUP' AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('PICKUP', 'DOCK_DROP', 'PICKUP_EXCEPTION', 'ASSOCIATE')) OR DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'EXCEPTION')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}

module "flink_statement_set_operations_dock_from_topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "dock"
  source_topic  = module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml.topic_name

  sinks = [
    { topic = module.topic_operations_dock_shipefs-outbound-adapter-dw-batch_xml.topic_name, filter = "DECODE(headers[ENCODE('carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('CoreShipmentChange')" },
  ]

  confluent_cluster = local.operations_dock_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_dock]
}
