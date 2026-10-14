module "flink_statement_set_operations_pickup-delivery_from_topic_back-office_imaging_edm-store-document-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_edm-store-document-response_xml"]

  sinks = [
    { topic = module.topic_operations_pickup-delivery_edm-store-document-response-fxf-direct_xml.topic_name, filter = "DECODE(headers[ENCODE('clientAppId', 'UTF-8')], 'UTF-8') = '3531550'" },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_operations_dock_ops-move-assignment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_operations_dock_ops-move-assignment_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_ops-move-assignment-pnd_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'MOVE-PND'" },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_operations_linehaul_hr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_operations_linehaul_hr_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_hr-eden-loginmt_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'LOGIN'" },
    { topic = module.topic_operations_pickup-delivery_hr-eden-textmt_xml.topic_name, filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'TXTMESSAGE' OR DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = '3531031'" },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_ship-android-push_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'ANDROID'" },
    { topic = module.topic_operations_pickup-delivery_ship-eden-consmt-unified_xml.topic_name, filter = "DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'SHIP' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DELIVERY'" },
    { topic = module.topic_operations_pickup-delivery_ship-eden-wss-outbound-unified_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'WSS'" },
    { topic = module.topic_operations_pickup-delivery_ship-pickup-fxfd_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'FXFD'" },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_operations_pickup-delivery_dispatch_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_operations_pickup-delivery_dispatch_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_ship-eden-consmt-unified_xml.topic_name },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_operations_pickup-delivery_eden-wss-outbound_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_operations_pickup-delivery_eden-wss-outbound_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_ship-eden-wss-outbound-unified_xml.topic_name },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_cdc-pickup-stop-req-h3d_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PICKUP_STOP_REQ'" },
    { topic = module.topic_operations_pickup-delivery_cdc-tfmtb036-h3d_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB036'" },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}

module "flink_statement_set_operations_pickup-delivery_from_topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  source_topic  = module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name

  sinks = [
    { topic = module.topic_operations_pickup-delivery_ship-app-notification-h3d_xml.topic_name, filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent')" },
  ]

  confluent_cluster = local.operations_pickup-delivery_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_pickup-delivery]
}
