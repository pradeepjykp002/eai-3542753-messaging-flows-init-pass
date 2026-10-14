module "flink_statement_set_operations_safety_from_topic_operations_linehaul_hr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "safety"
  source_topic  = module.topic_operations_linehaul_hr_xml.topic_name

  sinks = [
    { topic = module.topic_operations_safety_hr-mobile-login_xml.topic_name, filter = "DECODE(headers[ENCODE('EventCode', 'UTF-8')], 'UTF-8') = 'HOS_Mobile_Login'" },
    { topic = module.topic_operations_safety_hr-worker-status_xml.topic_name, filter = "DECODE(headers[ENCODE('EventCode', 'UTF-8')], 'UTF-8') = 'HOS_Personnel' OR DECODE(headers[ENCODE('EventCode', 'UTF-8')], 'UTF-8') = 'HOS_Personnel_PFM'" },
  ]

  confluent_cluster = local.operations_safety_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_safety]
}

module "flink_statement_set_operations_safety_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "safety"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_operations_safety_cdc-ps-af-eff-driver_xml.topic_name, filter = "(DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PWX' OR DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE_AI') AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PS_AF_EFF_DRIVER'" },
  ]

  confluent_cluster = local.operations_safety_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_safety]
}
