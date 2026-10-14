module "flink_statement_set_commercial_international_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "international"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_international_ship-cim_xml"], filter = "(DECODE(headers[ENCODE('carrierList', 'UTF-8')], 'UTF-8') LIKE '%FXFC%' AND (DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'SHIPMENT' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'FREIGHTBLL' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') IN ('ENTERED', 'RATED', 'CORRECTION', 'SENDTOCIM'))) OR (DECODE(headers[ENCODE('domain', 'UTF-8')], 'UTF-8') = 'SHIPMENT' AND DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') = 'DISPATCH' AND DECODE(headers[ENCODE('subEventCode', 'UTF-8')], 'UTF-8') = 'SENDTOCIM')" },
  ]

  confluent_cluster = local.commercial_international_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_international]
}

module "flink_statement_set_commercial_international_from_topic_tech-platforms_integration_rev_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "international"
  source_topic  = module.topic_tech-platforms_integration_rev_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_international_rev-mxfolio_xml"], filter = "DECODE(headers[ENCODE('OriginOrg', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('DestinationOrg', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'MexicoFolio'" },
  ]

  confluent_cluster = local.commercial_international_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_international]
}
