module "topic_operations_pickup-delivery_cdc-pickup-stop-req-h3d_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "cdc-pickup-stop-req-h3d"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_cdc-tfmtb036-h3d_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "cdc-tfmtb036-h3d"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_convey-wss-geomsgs-consmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "convey-wss-geomsgs-consmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_dispatch_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "dispatch"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_dynamic-map-render-requests_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "dynamic-map-render-requests"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_eden-render-requests_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "eden-render-requests"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_eden-wss-outbound_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "eden-wss-outbound"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_edm-store-document-response-fxf-direct_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "edm-store-document-response-fxf-direct"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_hr-eden-loginmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "hr-eden-loginmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_hr-eden-textmt_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "hr-eden-textmt"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_ops-move-assignment-pnd_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "ops-move-assignment-pnd"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_ship-android-push_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "ship-android-push"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_ship-app-notification-h3d_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "ship-app-notification-h3d"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_ship-eden-consmt-unified_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "ship-eden-consmt-unified"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_ship-eden-wss-outbound-unified_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "ship-eden-wss-outbound-unified"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_operations_pickup-delivery_ship-pickup-fxfd_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "operations"
  sub_portfolio = "pickup-delivery"
  data_domain   = "ship-pickup-fxfd"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.operations_pickup-delivery_topic_cluster
  flink_credentials = var.flink_credentials
}
