module "topic_tech-platforms_integration-other_airclic-fxcc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "airclic-fxcc"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_any-ftm-fmqa_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "any-ftm-fmqa"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_cdc-intl-shpmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "cdc-intl-shpmt"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_cdc-purchased-load_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "cdc-purchased-load"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_cdc-purchased-reg-load_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "cdc-purchased-reg-load"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-cip-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-cip-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-exception_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-exception"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-loadopp-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-loadopp-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-log_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-log"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-nlm-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-nlm-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-osc-response_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-osc-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-t-qual-return_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-t-qual-return"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs-vru_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs-vru"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs2cti_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs2cti"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_crs2dtts_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "crs2dtts"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_cti2crs_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "cti2crs"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_definition-ei_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "definition-ei"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_driver-pilot-drivert_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "driver-pilot-drivert"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_edi_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "edi"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_email-notification-imaging_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "email-notification-imaging"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_email-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "email-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_expediter-ord_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "expediter-ord"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_fms-ship-status-nlm-delay_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "fms-ship-status-nlm-delay"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_fms-ship-status_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "fms-ship-status"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_fusion-ftmrj_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "fusion-ftmrj"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_fxeftm-ei_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "fxeftm-ei"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_imaging-input-default_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "imaging-input-default"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_imaging-input-fccci_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "imaging-input-fccci"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_imaging-input-lmemisc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "imaging-input-lmemisc"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_imaging-input_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "imaging-input"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_mrm-exception_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "mrm-exception"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_mrm-log_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "mrm-log"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-events-edi_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-events-edi"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-bw-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-business-events-bw-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-exp_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-business-events-exp"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-position_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-business-events-position"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-business-events-shipment-fusion_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-business-events-shipment-fusion"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-crs_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-table-changes-crs"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-freight-group_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-table-changes-freight-group"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-lme_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-table-changes-lme"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_ods-shared-view-publisher-table-changes-shipment-fusion_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "ods-shared-view-publisher-table-changes-shipment-fusion"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_shipment-fusion-bwnotification-delay_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "shipment-fusion-bwnotification-delay"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_shipment-fusion-customer-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "shipment-fusion-customer-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_shipment-fusion-edi-delay_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "shipment-fusion-edi-delay"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_shipment-fusion-edi_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "shipment-fusion-edi"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_shipment-fusion-noi-request_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "shipment-fusion-noi-request"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_shipment-fusion-osm_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "shipment-fusion-osm"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_temp-log-integration-events_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "temp-log-integration-events"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_temp-log-integration_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "temp-log-integration"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_integration-other_tempstatus-ei_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "integration-other"
  data_domain   = "tempstatus-ei"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_integration-other_topic_cluster
  flink_credentials = var.flink_credentials
}
