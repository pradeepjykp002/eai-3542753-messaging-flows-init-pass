module "flink_statement_set_commercial_rating_from_topic_commercial_rating_rev-rating_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "rating"
  source_topic  = module.commercial_topics.topic_names["topic_commercial_rating_rev-rating_xml"]

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-comparator_xml"], filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'Modern-Rating' AND DECODE(headers[ENCODE('nextEvent', 'UTF-8')], 'UTF-8') = 'Compare-3540290'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-path-orchestrator_xml"], filter = "DECODE(headers[ENCODE('lastEvent', 'UTF-8')], 'UTF-8') = 'Rules Orchestrator 3540269' AND DECODE(headers[ENCODE('nextEvent', 'UTF-8')], 'UTF-8') = 'Path Orchestrator 3540270'" },
    { topic = module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-rules-orchestrator_xml"], filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'Modern-Rating' AND DECODE(headers[ENCODE('lastEvent', 'UTF-8')], 'UTF-8') = 'Gateway-3540102' AND DECODE(headers[ENCODE('nextEvent', 'UTF-8')], 'UTF-8') = 'Rules-3540269'" },
  ]

  confluent_cluster = local.commercial_rating_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_rating]
}

module "flink_statement_set_commercial_rating_from_topic_operations_linehaul_hr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "rating"
  source_topic  = module.topic_operations_linehaul_hr_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_rating_hr-driverpickup_xml"], filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'DRIVER_PICKUP' AND DECODE(headers[ENCODE('MsgSubType', 'UTF-8')], 'UTF-8') IN ('ASSIGNED', 'ARRIVED', 'ENROUTE', 'DEPARTED')" },
  ]

  confluent_cluster = local.commercial_rating_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_rating]
}

module "flink_statement_set_commercial_rating_from_topic_operations_linehaul_ship_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "commercial"
  sub_portfolio = "rating"
  source_topic  = module.topic_operations_linehaul_ship_xml.topic_name

  sinks = [
    { topic = module.commercial_topics.topic_names["topic_commercial_rating_ship-event-monitor_xml"], filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'NOIR' AND DECODE(headers[ENCODE('MsgSubType', 'UTF-8')], 'UTF-8') IN ('SHIP_TIME', 'PICKUP_TIME')" },
  ]

  confluent_cluster = local.commercial_rating_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_commercial_rating]
}
