# Locals for commercial generated topic files.

locals {
  is_not_dev   = var.env != "dev"
  is_prod_like = contains(["preprod", "prod"], var.env)

  commercial_ar-ap_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  commercial_billing_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  commercial_custom-critical_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  commercial_customer-automation_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  commercial_international_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  commercial_other_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  commercial_rating_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
}
