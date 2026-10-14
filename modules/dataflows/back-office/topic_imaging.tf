module "topic_back-office_imaging_cdc-msg-pars01_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "cdc-msg-pars01"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ebi-check-match_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ebi-check-match"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ebi-check-ocr_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ebi-check-ocr"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ebi-edm-store_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ebi-edm-store"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ebi-event-notify_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ebi-event-notify"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-archive-error_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-archive-error"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-archive_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-archive"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-docevent-edm_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-docevent-edm"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-docevent-replay_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-docevent-replay"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-docevent_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-docevent"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-error-tem-reject_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-error-tem-reject"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-error-tem-retry_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-error-tem-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-error-tem_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-error-tem"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-notify-customer-image-xref_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-notify-customer-image-xref"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-notify-customer_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-notify-customer"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-rendition_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-rendition"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-resubmit-document_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-resubmit-document"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-store-document-request_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-store-document-request"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-store-document-response_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-store-document-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_edm-store_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "edm-store"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-edce-genagent_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-edce-genagent"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-edce-processinit_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-edce-processinit"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-edcw-error_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-edcw-error"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-edcw-genagent_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-edcw-genagent"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-edcw-processinit_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-edcw-processinit"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-eici-genagent_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-eici-genagent"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep-eici-processinit_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep-eici-processinit"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_genesis-genprep_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "genesis-genprep"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_img-request_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "img-request"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_img-response_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "img-response"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_img_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "img"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ops-prints-ebol-retry_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ops-prints-ebol-retry"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ops-prints-ebol-retry2_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ops-prints-ebol-retry2"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ops-prints-ebol_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ops-prints-ebol"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ops-prints_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ops-prints"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-app-notification-ebol_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-app-notification-ebol"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-app-notification-equipment_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-app-notification-equipment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-dimcert_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-dimcert"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-generate-ebol-on-demand_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-generate-ebol-on-demand"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-inspectcert_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-inspectcert"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-prints-rewecert_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-prints-rewecert"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_back-office_imaging_ship-prints_xml" {
  source = "../../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "back-office"
  sub_portfolio = "imaging"
  data_domain   = "ship-prints"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.back-office_imaging_topic_cluster
  flink_credentials = var.flink_credentials
}
