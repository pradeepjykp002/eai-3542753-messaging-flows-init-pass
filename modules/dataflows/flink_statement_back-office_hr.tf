module "flink_statement_set_back-office_hr_from_topic_back-office_hr_timekeeping_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "back-office"
  sub_portfolio = "hr"
  source_topic  = module.back_office_topics.topic_names["topic_back-office_hr_timekeeping_xml"]

  sinks = [
    { topic = module.back_office_topics.topic_names["topic_back-office_hr_timekeeping-punch-retry_xml"], filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'PUNCH' AND DECODE(headers[ENCODE('MsgSubType', 'UTF-8')], 'UTF-8') = 'RETRY'" },
    { topic = module.back_office_topics.topic_names["topic_back-office_hr_timekeeping-punch-success_xml"], filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'PUNCH' AND DECODE(headers[ENCODE('MsgSubType', 'UTF-8')], 'UTF-8') = 'SUCCESS'" },
  ]

  confluent_cluster = local.back-office_hr_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_back-office_hr]
}
