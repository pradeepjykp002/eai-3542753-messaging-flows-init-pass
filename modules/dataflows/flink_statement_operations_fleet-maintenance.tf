module "flink_statement_set_operations_fleet-maintenance_from_topic_operations_fleet-maintenance_convey-inbound_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  source_topic  = module.topic_operations_fleet-maintenance_convey-inbound_xml.topic_name

  sinks = [
    { topic = module.topic_operations_fleet-maintenance_convey-inbound-equip-fleet_xml.topic_name, filter = "DECODE(headers[ENCODE('msgSource', 'UTF-8')], 'UTF-8') = 'fxf_fleet_maint' AND DECODE(headers[ENCODE('msgType', 'UTF-8')], 'UTF-8') = 'inbound' AND DECODE(headers[ENCODE('msgSubType', 'UTF-8')], 'UTF-8') = 'equip'" },
    { topic = module.topic_operations_fleet-maintenance_convey-inbound-equip-lhms_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'FXF-LHMS-S-3536762' OR DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = 'FAIE'" },
    { topic = module.topic_operations_fleet-maintenance_convey-inbound-invoice-fleet_xml.topic_name, filter = "DECODE(headers[ENCODE('msgSource', 'UTF-8')], 'UTF-8') = 'fxf_fleet_maint' AND DECODE(headers[ENCODE('msgType', 'UTF-8')], 'UTF-8') = 'invoice'" },
  ]

  confluent_cluster = local.operations_fleet-maintenance_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_fleet-maintenance]
}

module "flink_statement_set_operations_fleet-maintenance_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "operations"
  sub_portfolio = "fleet-maintenance"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_operations_fleet-maintenance_cdc-equip_xml.topic_name, filter = "(DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'EQUIPMENT') OR DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') = '3537805-CDC-Equip'" },
    { topic = module.topic_operations_fleet-maintenance_cdc-voucher-payment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND (DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PF_VOUCHER' OR DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PF_PYMNT_VCHR_XREF' OR DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PF_PAYMENT_TBL')" },
  ]

  confluent_cluster = local.operations_fleet-maintenance_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_operations_fleet-maintenance]
}
