module "flink_statement_set_commercial_ar-ap_from_topic_back-office_imaging_ebi-event-notify_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "ar-ap"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_ebi-event-notify_xml"]

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_ar-ap_ebi-freight-ocr_xml"], filter = "DECODE(headers[ENCODE('EVENT_TYPE', 'UTF-8')], 'UTF-8') = 'FREIGHT_OCR'" },
  ]

  confluent_cluster = local.commercial_ar-ap_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_ar-ap]
}

module "flink_statement_set_commercial_ar-ap_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "ar-ap"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_ar-ap_ship-adimsdim-adjust_xml"], filter = "DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'SHIPMENT' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'ADIMSDIM_ADJUST'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_ar-ap_ship-inspect_xml"], filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'INSP_ADJUST'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_ar-ap_ship-obms_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'FREIGHTBLL' OR DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DELIVERY'" },
  ]

  confluent_cluster = local.commercial_ar-ap_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_ar-ap]
}

module "flink_statement_set_commercial_ar-ap_from_topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "ar-ap"
  source_topic  = module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_ar-ap_ship-app-notification-adjust_xml"], filter = "DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('RATING', 'CORRECTION') AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF'" },
  ]

  confluent_cluster = local.commercial_ar-ap_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_ar-ap]
}
