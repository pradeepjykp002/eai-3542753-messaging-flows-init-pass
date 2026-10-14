module "topic_tech-platforms_data-platforms_cdc-dw-abi-batch_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-abi-batch"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q001_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q001"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q002_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q002"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q003_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q003"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q004_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q004"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q005_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q005"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q006_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q006"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q007_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q007"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q008_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q008"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q009_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q009"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q010_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q010"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q011_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q011"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q012_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q012"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q013_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q013"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q014_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q014"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q015_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q015"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q016_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q016"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q017_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q017"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q018_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q018"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q019_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q019"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q020_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q020"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q021_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q021"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q022_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q022"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q023_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q023"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_cdc-dw-q024_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "cdc-dw-q024"

  topic_config = merge(
    { cleanup_policy = "compact,delete", retention_ms = 604800000 },
    local.is_not_dev ? { retention_ms = 1209600000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 7776000000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_dw-inbound-dim_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "dw-inbound-dim"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_dw-inbound-hum_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "dw-inbound-hum"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_dw-inbound-imaging_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "dw-inbound-imaging"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_dw-inbound-pickup-surcharge-status_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "dw-inbound-pickup-surcharge-status"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}

module "topic_tech-platforms_data-platforms_dw-inbound_xml" {
  source = "../../../eai-3542753-common-tools/terraform/topic"

  env           = var.env
  portfolio     = "tech-platforms"
  sub_portfolio = "data-platforms"
  data_domain   = "dw-inbound"

  topic_config = merge(
    { cleanup_policy = "delete", retention_ms = 86400000 },
    local.is_not_dev ? { retention_ms = 259200000 } : {},
    local.is_prod_like ? { partition_count = 15, retention_ms = 604800000 } : {}
  )

  confluent_cluster = local.tech-platforms_data-platforms_topic_cluster
  flink_credentials = var.flink_credentials
}
