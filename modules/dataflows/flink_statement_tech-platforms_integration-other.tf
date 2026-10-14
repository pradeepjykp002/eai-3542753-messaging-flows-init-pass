module "flink_statement_set_tech-platforms_integration-other_from_topic_commercial_custom-critical_ods-events_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-events_xml"]

  sinks = [
    { topic = module.topic_tech-platforms_integration-other_ods-events-edi_xml.topic_name, filter = "DECODE(headers[ENCODE('eventMethod', 'UTF-8')], 'UTF-8') = 'ediTemperatureUpdate'" },
  ]

  confluent_cluster = local.tech-platforms_integration-other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_integration-other]
}

module "flink_statement_set_tech-platforms_integration-other_from_topic_commercial_custom-critical_ods-shared-view-publisher-business-events_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-business-events_xml"]

  sinks = [
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-bw-notification_xml.topic_name, filter = "DECODE(headers[ENCODE('businessEventApplication', 'UTF-8')], 'UTF-8') = 'NOT'" },
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-exp_xml.topic_name, filter = "DECODE(headers[ENCODE('businessEventNm', 'UTF-8')], 'UTF-8') = 'movementComplete'" },
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-position_xml.topic_name, filter = "DECODE(headers[ENCODE('businessEventNm', 'UTF-8')], 'UTF-8') = 'truckPositionUpdate'" },
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-shipment-fusion_xml.topic_name, filter = "DECODE(headers[ENCODE('businessEventNm', 'UTF-8')], 'UTF-8') IN ('quoteInsert', 'quoteToOrderUpdate', 'orderInsert', 'orderCancel', 'orderPayorCustomerUpdate', 'orderCallingLocationUpdate', 'orderDivisionUpdate', 'orderRevenueUpdate', 'orderSensitivity', 'stopEtaUpdate', 'stopArrival', 'stopDeparture', 'movementDispatch', 'stopLocationUpdate')" },
  ]

  confluent_cluster = local.tech-platforms_integration-other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_integration-other]
}

module "flink_statement_set_tech-platforms_integration-other_from_topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml"]

  sinks = [
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-crs_xml.topic_name, filter = "DECODE(headers[ENCODE('publishType', 'UTF-8')], 'UTF-8') IN ('truckTableChangeEvent', 'driverTableChangeEvent', 'mcActivityTableChangeEvent') AND (DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '*%' OR DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '%CRS%' OR headers[ENCODE('significantTo', 'UTF-8')] IS NULL)" },
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-freight-group_xml.topic_name, filter = "DECODE(headers[ENCODE('publishTable', 'UTF-8')], 'UTF-8') = 'freight_group_item' AND DECODE(headers[ENCODE('originSystem', 'UTF-8')], 'UTF-8') <> 'FMS'" },
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-lme_xml.topic_name, filter = "DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '%BEH%' AND DECODE(headers[ENCODE('originSystem', 'UTF-8')], 'UTF-8') <> 'FMS'" },
    { topic = module.topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-shipment-fusion_xml.topic_name, filter = "DECODE(headers[ENCODE('publishType', 'UTF-8')], 'UTF-8') IN ('freightGroupTableChangeEvent', 'servicefailTableChangeEvent') OR (DECODE(headers[ENCODE('publishType', 'UTF-8')], 'UTF-8') = 'truckCurrPollPositionTableChangeEvent' AND DECODE(headers[ENCODE('publishTable', 'UTF-8')], 'UTF-8') = 'callin')" },
  ]

  confluent_cluster = local.tech-platforms_integration-other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_integration-other]
}

module "flink_statement_set_tech-platforms_integration-other_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_integration-other_cdc-intl-shpmt_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'INTL_SHPMT_QUE'" },
    { topic = module.topic_tech-platforms_integration-other_cdc-purchased-load_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PURCHASED_LOAD'" },
    { topic = module.topic_tech-platforms_integration-other_cdc-purchased-reg-load_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PURCHASED_REG_LOAD'" },
  ]

  confluent_cluster = local.tech-platforms_integration-other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_integration-other]
}

module "flink_statement_set_tech-platforms_integration-other_from_topic_tech-platforms_integration-other_email-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  source_topic  = module.topic_tech-platforms_integration-other_email-notification_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_integration-other_email-notification-imaging_xml.topic_name, filter = "headers[ENCODE('templateType', 'UTF-8')] IS NULL OR DECODE(headers[ENCODE('templateType', 'UTF-8')], 'UTF-8') NOT IN ('DISPATCH', 'QUOTE', 'POD', 'ORDER', 'MISC', 'COP')" },
  ]

  confluent_cluster = local.tech-platforms_integration-other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_integration-other]
}

module "flink_statement_set_tech-platforms_integration-other_from_topic_tech-platforms_integration-other_imaging-input_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  source_topic  = module.topic_tech-platforms_integration-other_imaging-input_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_integration-other_imaging-input-default_xml.topic_name, filter = "headers[ENCODE('eventMethod', 'UTF-8')] IS NULL OR DECODE(headers[ENCODE('eventMethod', 'UTF-8')], 'UTF-8') <> 'docType:Health Care Place Update'" },
    { topic = module.topic_tech-platforms_integration-other_imaging-input-fccci_xml.topic_name, filter = "DECODE(headers[ENCODE('eventMethod', 'UTF-8')], 'UTF-8') = 'docType:Health Care Place Update'" },
    { topic = module.topic_tech-platforms_integration-other_imaging-input-lmemisc_xml.topic_name, filter = "DECODE(headers[ENCODE('eventMethod', 'UTF-8')], 'UTF-8') = 'docType:TenStreet Driver Upload'" },
  ]

  confluent_cluster = local.tech-platforms_integration-other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_integration-other]
}
