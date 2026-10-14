module "flink_statement_set_commercial_custom-critical_from_topic_commercial_custom-critical_any-email-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_custom-critical_any-email-notification_xml"]

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_email-notification-unified_xml"] },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}

module "flink_statement_set_commercial_custom-critical_from_topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml"]

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes-loadboard_xml"], filter = "DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '*%' OR DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '%OO%'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes-nds_xml"], filter = "DECODE(headers[ENCODE('originSystem', 'UTF-8')], 'UTF-8') <> 'FMS' AND (DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') = '*' OR DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '%NDS%')" },
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes-tds_xml"], filter = "DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '*%' OR DECODE(headers[ENCODE('significantTo', 'UTF-8')], 'UTF-8') LIKE '%TDS%'" },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}

module "flink_statement_set_commercial_custom-critical_from_topic_tech-platforms_integration-other_any-ftm-fmqa_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.topic_tech-platforms_integration-other_any-ftm-fmqa_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_any-ftm-fmqa-fic_xml"], filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = '391473'" },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}

module "flink_statement_set_commercial_custom-critical_from_topic_tech-platforms_integration-other_crs-loadopp-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.topic_tech-platforms_integration-other_crs-loadopp-response_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_crs-dispatch-unified_xml"], filter = "DECODE(headers[ENCODE('originInstanceCorrelationId', 'UTF-8')], 'UTF-8') NOT LIKE 'Beta-Dispatch%'" },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}

module "flink_statement_set_commercial_custom-critical_from_topic_tech-platforms_integration-other_crs-nlm-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.topic_tech-platforms_integration-other_crs-nlm-response_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_crs-dispatch-unified_xml"] },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}

module "flink_statement_set_commercial_custom-critical_from_topic_tech-platforms_integration-other_crs-osc-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.topic_tech-platforms_integration-other_crs-osc-response_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_crs-dispatch-unified_xml"], filter = "DECODE(headers[ENCODE('originInstanceCorrelationId', 'UTF-8')], 'UTF-8') LIKE 'Dispatch%'" },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}

module "flink_statement_set_commercial_custom-critical_from_topic_tech-platforms_integration-other_email-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "custom-critical"
  source_topic  = module.topic_tech-platforms_integration-other_email-notification_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_custom-critical_email-notification-unified_xml"] },
  ]

  confluent_cluster = local.commercial_custom-critical_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_custom-critical]
}
