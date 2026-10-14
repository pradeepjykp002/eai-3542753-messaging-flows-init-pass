module "flink_statement_set_commercial_customer-automation_from_topic_commercial_customer-automation_trackingnbr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr_xml"]

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr-atl_xml"], filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'WTC' OR DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'COLOE'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr-edcw_xml"], filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'EDCW'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr-las_xml"], filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'EDCW' OR DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'COLOW'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr-wtc_xml"], filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'WTC'" },
  ]

  confluent_cluster = local.commercial_customer-automation_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_customer-automation]
}

module "flink_statement_set_commercial_customer-automation_from_topic_tech-platforms_data-sefs_esdsu-cvd_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  source_topic  = module.topic_tech-platforms_data-sefs_esdsu-cvd_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_customer-automation_esdsu-cvd-fxfd-trac_xml"], filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FDFR', 'FDCC') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'FXFD_TRAC'" },
  ]

  confluent_cluster = local.commercial_customer-automation_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_customer-automation]
}

module "flink_statement_set_commercial_customer-automation_from_topic_tech-platforms_integration-other_any-ftm-fmqa_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "customer-automation"
  source_topic  = module.topic_tech-platforms_integration-other_any-ftm-fmqa_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_customer-automation_esdsu-cvd-fxfd-trac_xml"], filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = '391473'" },
  ]

  confluent_cluster = local.commercial_customer-automation_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_customer-automation]
}
