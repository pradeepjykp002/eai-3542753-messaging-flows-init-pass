# Locals for back-office generated topic files.

locals {
  is_not_dev   = var.env != "dev"
  is_prod_like = contains(["preprod", "prod"], var.env)

  back-office_finance_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  back-office_hr_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  back-office_imaging_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
}
