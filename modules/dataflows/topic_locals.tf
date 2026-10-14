# Locals for the generated topic files.

locals {
  # Non-dev environments get Test Overrides applied on top of Default
  # Overrides; prod-like environments additionally get Production Overrides
  # applied on top of that. dev gets just the defaults.
  is_not_dev   = var.env != "dev"
  is_prod_like = contains(["preprod", "prod"], var.env)

  # Each topic runs an internal header-ALTER Flink statement routed through the
  # shared admin compute pool. Using a single admin pool rather than each
  # subportfolio's own pool avoids the circular dependency that would arise if
  # topics used the subportfolio's Flink service account (whose access depends
  # on the topic names it reads).
  operations_dock_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  operations_fleet-maintenance_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  operations_linehaul_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  operations_pickup-delivery_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  operations_safety_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  tech-platforms_data-platforms_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  tech-platforms_data-purescale_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  tech-platforms_data-sefs_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  tech-platforms_integration_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
  tech-platforms_integration-other_topic_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.admin_compute_pool_id
  })
}
