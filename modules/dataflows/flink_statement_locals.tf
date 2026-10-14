# Locals for the generated Flink statement files.

locals {
  # Each subportfolio's statements run on its own compute pool, as its own
  # Flink service account.
  back-office_hr_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["back-office_hr"]
    principal_id          = var.flink_service_account_ids["back-office_hr"]
  })
  back-office_imaging_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["back-office_imaging"]
    principal_id          = var.flink_service_account_ids["back-office_imaging"]
  })
  commercial_ar-ap_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_ar-ap"]
    principal_id          = var.flink_service_account_ids["commercial_ar-ap"]
  })
  commercial_billing_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_billing"]
    principal_id          = var.flink_service_account_ids["commercial_billing"]
  })
  commercial_custom-critical_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_custom-critical"]
    principal_id          = var.flink_service_account_ids["commercial_custom-critical"]
  })
  commercial_customer-automation_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_customer-automation"]
    principal_id          = var.flink_service_account_ids["commercial_customer-automation"]
  })
  commercial_international_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_international"]
    principal_id          = var.flink_service_account_ids["commercial_international"]
  })
  commercial_other_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_other"]
    principal_id          = var.flink_service_account_ids["commercial_other"]
  })
  commercial_rating_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["commercial_rating"]
    principal_id          = var.flink_service_account_ids["commercial_rating"]
  })
  operations_dock_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["operations_dock"]
    principal_id          = var.flink_service_account_ids["operations_dock"]
  })
  operations_fleet-maintenance_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["operations_fleet-maintenance"]
    principal_id          = var.flink_service_account_ids["operations_fleet-maintenance"]
  })
  operations_linehaul_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["operations_linehaul"]
    principal_id          = var.flink_service_account_ids["operations_linehaul"]
  })
  operations_pickup-delivery_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["operations_pickup-delivery"]
    principal_id          = var.flink_service_account_ids["operations_pickup-delivery"]
  })
  operations_safety_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["operations_safety"]
    principal_id          = var.flink_service_account_ids["operations_safety"]
  })
  tech-platforms_data-platforms_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["tech-platforms_data-platforms"]
    principal_id          = var.flink_service_account_ids["tech-platforms_data-platforms"]
  })
  tech-platforms_data-sefs_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["tech-platforms_data-sefs"]
    principal_id          = var.flink_service_account_ids["tech-platforms_data-sefs"]
  })
  tech-platforms_integration-other_statement_cluster = merge(var.confluent_cluster, {
    flink_compute_pool_id = var.flink_compute_pool_ids["tech-platforms_integration-other"]
    principal_id          = var.flink_service_account_ids["tech-platforms_integration-other"]
  })
}
