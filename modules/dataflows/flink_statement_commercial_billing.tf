module "flink_statement_set_commercial_billing_from_topic_commercial_billing_autocoder_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "billing"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_billing_autocoder_xml"]

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_autocoder-autocode_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'AUTOCODE'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_autocoder-coding_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'CODING'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_autocoder-custassign_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'CUSTASSIGN'" },
  ]

  confluent_cluster = local.commercial_billing_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_billing]
}

module "flink_statement_set_commercial_billing_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "billing"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_ship-afbc_xml"], filter = "(DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'PICKUP' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') IN ('CONF', 'POSS')) OR (DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'FBE' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') IN ('COMP'))" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_ship-broker-inclusive_xml"], filter = "(DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'Broker_Inclusive' AND DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'FTN') OR DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'Broker_Decisioning'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_ship-coding_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'CODING'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_ship-dim-adjust_xml"], filter = "DECODE(headers[ENCODE('serviceProvider', 'UTF-8')], 'UTF-8') = 'FXFRating' AND DECODE(headers[ENCODE('serviceConsumer', 'UTF-8')], 'UTF-8') = 'DimAdjustSub'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_ship-reweigh-adjust_xml"], filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'REW_ADJUST'" },
  ]

  confluent_cluster = local.commercial_billing_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_billing]
}

module "flink_statement_set_commercial_billing_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "billing"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_cdc-drv-sts-from-plato_xml"], filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'DRV_STS_FROM_PLATO'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_cdc-pickup-stop-cmt_xml"], filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PICKUP_STOP_CMT'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_cdc-pickup-stop-req_xml"], filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PICKUP_STOP_REQ'" },
  ]

  confluent_cluster = local.commercial_billing_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_billing]
}

module "flink_statement_set_commercial_billing_from_topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "billing"
  source_topic  = module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_billing_ship-app-notification-pkup-conf_xml"], filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('messageSubType', 'UTF-8')], 'UTF-8') IN ('PKUP_CONFIRM') AND DECODE(headers[ENCODE('eventType', 'UTF-8')], 'UTF-8') IN ('PICKUP', 'PICKUP_EXCEPTION')" },
  ]

  confluent_cluster = local.commercial_billing_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_billing]
}
