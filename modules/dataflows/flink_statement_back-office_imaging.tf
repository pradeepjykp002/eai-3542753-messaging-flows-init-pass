module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_ebi-event-notify_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_ebi-event-notify_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ebi-check-match_xml"], filter = "DECODE(headers[ENCODE('EVENT_TYPE', 'UTF-8')], 'UTF-8') = 'AR_MATCH'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ebi-check-ocr_xml"], filter = "DECODE(headers[ENCODE('EVENT_TYPE', 'UTF-8')], 'UTF-8') = 'EDM_OCR' OR DECODE(headers[ENCODE('EVENT_TYPE', 'UTF-8')], 'UTF-8') = 'OCR'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ebi-edm-store_xml"], filter = "DECODE(headers[ENCODE('EVENT_TYPE', 'UTF-8')], 'UTF-8') = 'EDM_OCR' OR DECODE(headers[ENCODE('EVENT_TYPE', 'UTF-8')], 'UTF-8') = 'EDM'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_edm-docevent_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_edm-docevent_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_edm-docevent-edm_xml"], filter = "TRY_CAST(DECODE(headers[ENCODE('MigratedDocEvent', 'UTF-8')], 'UTF-8') AS BOOLEAN) = FALSE AND headers[ENCODE('archiveRetryCount', 'UTF-8')] IS NULL" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_edm-docevent-replay_xml"], filter = "headers[ENCODE('archiveRetryCount', 'UTF-8')] IS NULL" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_edm-error-tem_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_edm-error-tem_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_edm-error-tem-reject_xml"], filter = "DECODE(headers[ENCODE('errorType', 'UTF-8')], 'UTF-8') = 'FUNCTIONAL'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_edm-error-tem-retry_xml"], filter = "DECODE(headers[ENCODE('errorType', 'UTF-8')], 'UTF-8') = 'TECHNICAL'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_edm-notify-customer_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_edm-notify-customer_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_edm-notify-customer-image-xref_xml"], filter = "DECODE(headers[ENCODE('OPCO_CD', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('STREAM_ID', 'UTF-8')], 'UTF-8') = 'CLAIMS'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_genesis-genprep_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-edce-genagent_xml"], filter = "DECODE(headers[ENCODE('Consumer', 'UTF-8')], 'UTF-8') = 'EDCE'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-edce-processinit_xml"], filter = "DECODE(headers[ENCODE('Consumer', 'UTF-8')], 'UTF-8') = 'EDCP'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-edcw-genagent_xml"], filter = "DECODE(headers[ENCODE('Consumer', 'UTF-8')], 'UTF-8') = 'GW'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-eici-genagent_xml"], filter = "DECODE(headers[ENCODE('Consumer', 'UTF-8')], 'UTF-8') = 'EIC'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-eici-processinit_xml"], filter = "DECODE(headers[ENCODE('Consumer', 'UTF-8')], 'UTF-8') = 'EICP'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_img_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_img_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_img-request_xml"], filter = "DECODE(headers[ENCODE('MessageType', 'UTF-8')], 'UTF-8') = 'Imaging' AND DECODE(headers[ENCODE('MessageSubType', 'UTF-8')], 'UTF-8') = 'Request'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_img-response_xml"], filter = "DECODE(headers[ENCODE('MessageType', 'UTF-8')], 'UTF-8') = 'Imaging' AND DECODE(headers[ENCODE('MessageSubType', 'UTF-8')], 'UTF-8') = 'Response'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_ops-prints_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints-ebol_xml"], filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') IN ('EBOL', 'ACCESSORIAL')" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_back-office_imaging_ship-prints_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints-ebol_xml"], filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') IN ('EBOL', 'ACCESSORIAL')" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints-rewecert_xml"], filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'REWECERT'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_commercial_billing_ship-generate-ebol_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_billing_ship-generate-ebol_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ship-generate-ebol-on-demand_xml"], filter = "DECODE(headers[ENCODE('MsgSubType', 'UTF-8')], 'UTF-8') = 'EBOLOnDemand'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ship-dimcert_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DIMCERT' AND DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'DIM'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ship-inspectcert_xml"], filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'INSPECTCERT'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_cdc-msg-pars01_xml"], filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'MSG_PARS01'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}

module "flink_statement_set_back-office_imaging_from_topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "imaging"
  source_topic  = module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ship-app-notification-ebol_xml"], filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('messageSubType', 'UTF-8')], 'UTF-8') IN ('PKUP_CONFIRM') AND DECODE(headers[ENCODE('eventType', 'UTF-8')], 'UTF-8') IN ('PICKUP', 'PICKUP_EXCEPTION')" },
    { topic = module.back_office_topics.topic_names["topic_back-office_imaging_ship-app-notification-equipment_xml"], filter = "DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') = 'REVENUE' AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') = 'RECORD_COMPLETION' AND DECODE(headers[ENCODE('fxfEventSourceType', 'UTF-8')], 'UTF-8') = 'MODERN' AND DECODE(headers[ENCODE('recordType', 'UTF-8')], 'UTF-8') = 'SHIPMENT'" },
  ]

  confluent_cluster = local.back-office_imaging_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_imaging]
}
