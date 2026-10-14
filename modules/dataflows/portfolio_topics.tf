# Portfolio-specific topic modules.
#
# Back-office and commercial topic definitions live in their own sub-modules so
# generated files can be organised by portfolio while still exposing topic names
# to the rest of the dataflows module.

module "back_office_topics" {
  source = "./back-office"

  env                   = var.env
  confluent_cluster     = var.confluent_cluster
  admin_compute_pool_id = var.admin_compute_pool_id
  flink_credentials     = var.flink_credentials
}

module "commercial_topics" {
  source = "./commercial"

  env                   = var.env
  confluent_cluster     = var.confluent_cluster
  admin_compute_pool_id = var.admin_compute_pool_id
  flink_credentials     = var.flink_credentials
}
