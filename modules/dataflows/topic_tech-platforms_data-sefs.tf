module "topic_tech-platforms_data-sefs_accops-ftmrj_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "accops-ftmrj"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-abol-header_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-abol-header"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-af-calendar_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-af-calendar"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-appointment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-appointment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-appt-shipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-appt-shipment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-bus-cd-translation_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-bus-cd-translation"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-ca-cash-addr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-ca-cash-addr"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-carr-profile-hdr_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-carr-profile-hdr"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-cust-center-group_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-cust-center-group"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-cust-center-misc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-cust-center-misc"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-cust-ctr-bus-ref_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-cust-ctr-bus-ref"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-cust-map-loc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-cust-map-loc"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-cust-wkly-calendar_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-cust-wkly-calendar"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-customer-address_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-customer-address"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-customer-contact_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-customer-contact"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-customer-profile_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-customer-profile"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-delivery-stop-req_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-delivery-stop-req"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-driver_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-driver"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-equipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-equipment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-evt-subscrptn_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-evt-subscrptn"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-fb-corr-req-cmnt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-fb-corr-req-cmnt"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-fxf-empl-ns-vw_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-fxf-empl-ns-vw"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-gateway-transfer_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-gateway-transfer"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-location-master_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-location-master"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-manifest-item-hist_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-manifest-item-hist"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-ob-door-definition_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-ob-door-definition"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-osd-comment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-osd-comment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-osd-disp-req-cmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-osd-disp-req-cmt"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-pars-shipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-pars-shipment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-pickup-stop-req-legacy_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-pickup-stop-req-legacy"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-publsh-evt-shp-dtl_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-publsh-evt-shp-dtl"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-ship-in-jeopardy_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-ship-in-jeopardy"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-ship-party-contact_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-ship-party-contact"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-ship-pickup-hist_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-ship-pickup-hist"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-comments_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-comments"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-item-nmfc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-item-nmfc"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-item_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-item"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-load-to_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-load-to"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-location_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-location"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-party_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-party"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment-route_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment-route"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shipment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-absolute_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-absolute"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-billto-xref_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-billto-xref"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-bol-xref_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-bol-xref"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-delete-audit_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-delete-audit"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-delivery-hist_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-delivery-hist"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-distress_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-distress"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-event-audit_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-event-audit"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-movement-legacy_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-movement-legacy"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-osd-incident_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-osd-incident"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-po-nbr-xref_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-po-nbr-xref"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-snbr-nbr-xref_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-snbr-nbr-xref"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-shp-value-audit_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-shp-value-audit"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-suspense-load-to_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-suspense-load-to"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-tfmtb021_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-tfmtb021"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-tfmtb036-legacy_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-tfmtb036-legacy"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-tfmtb070_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-tfmtb070"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdc-zip-city-service_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdc-zip-city-service"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-abol-data_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-abol-data"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-appt-shipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-appt-shipment"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-consolidation_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-consolidation"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-delivery_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-delivery"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-exception_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-exception"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-migration-data_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-migration-data"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-reprocess_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-reprocess"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-ship-pickup-hist_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-ship-pickup-hist"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-shipment-comments_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-shipment-comments"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-shipment-data_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-shipment-data"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-shipment-location_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-shipment-location"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-shp-osd-incident_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-shp-osd-incident"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle-tfmtb070_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle-tfmtb070"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_cdcfxfle_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "cdcfxfle"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-fmqa-fxe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-fmqa-fxe"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-fmqa-fxf_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-fmqa-fxf"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-fmqa-fxg_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-fmqa-fxg"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-fxe_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-fxe"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-fxf_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-fxf"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-fxg_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-fxg"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-legacy_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-legacy"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-out_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-out"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd-undelivered_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd-undelivered"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_esdsu-cvd_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "esdsu-cvd"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_fdeg-as400-ftmrj_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "fdeg-as400-ftmrj"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_sefs-ftmrj_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "sefs-ftmrj"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_sefs-legacy-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "sefs-legacy-adapter"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "sefs-sdom-gateway"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_ship-app-notification-asset-amtn_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "ship-app-notification-asset-amtn"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "ship-app-notification"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-fxg-outbound-custvisdv_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-fxg-outbound-custvisdv"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-inbound-core-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-inbound-core-adapter"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-inbound-core-miggate_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-inbound-core-miggate"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-inbound-core_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-inbound-core"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-outbound-adapter-consolidation_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-outbound-adapter-consolidation"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-outbound-adapter-custvisdv_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-outbound-adapter-custvisdv"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-outbound-adapter-shipment_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-outbound-adapter-shipment"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-outbound-adapter"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-sagacomplete-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-sagacomplete-adapter"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-sefs_shipefs-sagacomplete_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  data_domain   = "shipefs-sagacomplete"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-sefs_topic_cluster
  flink_credentials = var.flink_credentials
}
