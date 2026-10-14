module "flink_statement_set_operations_linehaul_from_topic_operations_dock_ops-move-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "linehaul"
  source_topic  = module.topic_operations_dock_ops-move-assignment_xml.topic_name

  sinks = [
    { topic = module.topic_operations_linehaul_ops-move-assignment-road_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'MOVE-ROAD'" },
  ]

  confluent_cluster = local.operations_linehaul_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_linehaul]
}

module "flink_statement_set_operations_linehaul_from_topic_operations_dock_screen-shipment-during-transportation_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "linehaul"
  source_topic  = module.topic_operations_dock_screen-shipment-during-transportation_xml.topic_name

  sinks = [
    { topic = module.topic_operations_linehaul_screen-shipment-during-transportation-cmqt_xml.topic_name, filter = "DECODE(headers[ENCODE('entityType', 'UTF-8')], 'UTF-8') = 'Shipment' AND TRY_CAST(DECODE(headers[ENCODE('vfsShipment', 'UTF-8')], 'UTF-8') AS BOOLEAN) = TRUE AND (DECODE(headers[ENCODE('eventType', 'UTF-8')], 'UTF-8') = 'PICKUP' OR DECODE(headers[ENCODE('eventSubType', 'UTF-8')], 'UTF-8') IN ('RATING', 'CORRECTION', 'RECORD_COMPLETION'))" },
    { topic = module.topic_operations_linehaul_screen-shipment-during-transportation-csqt_xml.topic_name, filter = "DECODE(headers[ENCODE('entityType', 'UTF-8')], 'UTF-8') = 'Shipment' AND (TRY_CAST(DECODE(headers[ENCODE('customizedSolution', 'UTF-8')], 'UTF-8') AS BOOLEAN) = TRUE OR (DECODE(headers[ENCODE('eventType', 'UTF-8')], 'UTF-8') = 'DELIVERY' AND DECODE(headers[ENCODE('eventSubType', 'UTF-8')], 'UTF-8') = 'DELIVERED'))" },
  ]

  confluent_cluster = local.operations_linehaul_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_linehaul]
}

module "flink_statement_set_operations_linehaul_from_topic_operations_linehaul_convey_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "linehaul"
  source_topic  = module.topic_operations_linehaul_convey_xml.topic_name

  sinks = [
    { topic = module.topic_operations_linehaul_convey-audit_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'AUDIT'" },
  ]

  confluent_cluster = local.operations_linehaul_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_linehaul]
}

module "flink_statement_set_operations_linehaul_from_topic_operations_linehaul_hr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "linehaul"
  source_topic  = module.topic_operations_linehaul_hr_xml.topic_name

  sinks = [
    { topic = module.topic_operations_linehaul_hr-road_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'ROAD'" },
  ]

  confluent_cluster = local.operations_linehaul_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_linehaul]
}

module "flink_statement_set_operations_linehaul_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "linehaul"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.topic_operations_linehaul_ship-network-integration-checks_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'LH-7564' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEY'" },
    { topic = module.topic_operations_linehaul_ship-network_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'LH-TN100' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEY'" },
    { topic = module.topic_operations_linehaul_ship-roadhh-lhm_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'ROAD' OR (DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEYANCE' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DISPATCH' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') = 'ADD') OR (DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEYANCE' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'ARRIVE' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') = 'ADD')" },
    { topic = module.topic_operations_linehaul_ship-roadhh_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'ROAD' OR (DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEYANCE' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DISPATCH' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') = 'ADD') OR (DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEYANCE' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'ARRIVE' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') = 'ADD')" },
    { topic = module.topic_operations_linehaul_ship-rte-remain_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'LINEHAUL' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEY'" },
    { topic = module.topic_operations_linehaul_ship-rte-req-lta_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'SHIP_RTE_REQ' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'SHIP'" },
    { topic = module.topic_operations_linehaul_ship-rte-req_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'SHIP_RTE_REQ' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'SHIP'" },
    { topic = module.topic_operations_linehaul_ship-traceaudit_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'LH-TRACEAUDIT' AND DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'CONVEY'" },
  ]

  confluent_cluster = local.operations_linehaul_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_linehaul]
}

module "flink_statement_set_operations_linehaul_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "linehaul"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_operations_linehaul_cdc-kronos_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'KRONOS_JMS_EVENT'" },
  ]

  confluent_cluster = local.operations_linehaul_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_linehaul]
}
