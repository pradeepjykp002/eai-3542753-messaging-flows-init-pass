module "flink_statement_set_tech-platforms_data-platforms_from_topic_tech-platforms_data-platforms_dw-inbound_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  source_topic  = module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-platforms_dw-inbound-dim_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'DIM'" },
    { topic = module.topic_tech-platforms_data-platforms_dw-inbound-hum_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'HUM'" },
    { topic = module.topic_tech-platforms_data-platforms_dw-inbound-imaging_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'IMAGING'" },
    { topic = module.topic_tech-platforms_data-platforms_dw-inbound-pickup-surcharge-status_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'processStatus' AND DECODE(headers[ENCODE('FX_Subject_Area', 'UTF-8')], 'UTF-8') = 'surcharge' AND DECODE(headers[ENCODE('FX_Event_Origin', 'UTF-8')], 'UTF-8') = 'pickupRequest'" },
  ]

  confluent_cluster = local.tech-platforms_data-platforms_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-platforms]
}

module "flink_statement_set_tech-platforms_data-platforms_from_topic_tech-platforms_data-purescale_cdc-dw_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc-dw_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q001_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q001.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q002_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q002.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q003_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q003.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q004_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q004.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q005_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q005.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q006_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q006.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q007_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q007.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q008_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q008.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q009_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q009.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q010_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q010.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q011_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q011.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q012_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q012.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q013_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q013.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q014_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q014.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q015_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q015.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q016_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q016.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q017_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q017.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q018_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q018.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q019_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q019.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q020_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q020.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q021_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q021.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q022_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q022.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q023_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q023.DW-ABI-BATCH-3530913'" },
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-q024_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.DW.Q024.DW-ABI-BATCH-3530913'" },
  ]

  confluent_cluster = local.tech-platforms_data-platforms_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-platforms]
}

module "flink_statement_set_tech-platforms_data-platforms_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-platforms_cdc-dw-abi-batch_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'PURESCALE' AND DECODE(headers[ENCODE('MsgTarget', 'UTF-8')], 'UTF-8') = 'FDFR.CDC.Q001.DW-ABI-BATCH-3530913'" },
  ]

  confluent_cluster = local.tech-platforms_data-platforms_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-platforms]
}
