module "flink_statement_set_commercial_other_from_topic_tech-platforms_integration_rev_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "other"
  source_topic  = module.topic_tech-platforms_integration_rev_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_other_rev-dynamic-jcl_xml"], filter = "DECODE(headers[ENCODE('eventCode', 'UTF-8')], 'UTF-8') IN ('SUBMIT_JCL', 'HANDOFF_JCL') AND DECODE(headers[ENCODE('eventSubType', 'UTF-8')], 'UTF-8') = 'JCL'" },
  ]

  confluent_cluster = local.commercial_other_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_other]
}
