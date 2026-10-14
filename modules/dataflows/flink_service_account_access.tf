# Roles for each subportfolio's Flink service account: write access to its own
# topic prefix, read access to every topic its statements consume, and the
# control-plane roles without which Confluent rejects its statements outright.
#
# Statements must not be submitted before these exist, so each statement set in
# flink_statement_<portfolio>_<sub_portfolio>.tf depends on the matching module
# instance here.

module "flink_service_account_access_back-office_hr" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "back-office"
  sub_portfolio      = "hr"
  service_account_id = var.flink_service_account_ids["back-office_hr"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.back_office_topics.topic_names["topic_back-office_hr_timekeeping_xml"],
  ]
}

module "flink_service_account_access_back-office_imaging" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "back-office"
  sub_portfolio      = "imaging"
  service_account_id = var.flink_service_account_ids["back-office_imaging"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.back_office_topics.topic_names["topic_back-office_imaging_ebi-event-notify_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_edm-docevent_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_edm-error-tem_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_edm-notify-customer_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_img_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints_xml"],
    module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"],
    module.commercial_topics.topic_names["topic_commercial_billing_ship-generate-ebol_xml"],
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
    module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_ar-ap" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "ar-ap"
  service_account_id = var.flink_service_account_ids["commercial_ar-ap"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.back_office_topics.topic_names["topic_back-office_imaging_ebi-event-notify_xml"],
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_billing" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "billing"
  service_account_id = var.flink_service_account_ids["commercial_billing"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.commercial_topics.topic_names["topic_commercial_billing_autocoder_xml"],
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
    module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_custom-critical" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "custom-critical"
  service_account_id = var.flink_service_account_ids["commercial_custom-critical"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.commercial_topics.topic_names["topic_commercial_custom-critical_any-email-notification_xml"],
    module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml"],
    module.topic_tech-platforms_integration-other_any-ftm-fmqa_xml.topic_name,
    module.topic_tech-platforms_integration-other_crs-loadopp-response_xml.topic_name,
    module.topic_tech-platforms_integration-other_crs-nlm-response_xml.topic_name,
    module.topic_tech-platforms_integration-other_crs-osc-response_xml.topic_name,
    module.topic_tech-platforms_integration-other_email-notification_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_customer-automation" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "customer-automation"
  service_account_id = var.flink_service_account_ids["commercial_customer-automation"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr_xml"],
    module.topic_tech-platforms_data-sefs_esdsu-cvd_xml.topic_name,
    module.topic_tech-platforms_integration-other_any-ftm-fmqa_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_international" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "international"
  service_account_id = var.flink_service_account_ids["commercial_international"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_tech-platforms_integration_rev_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "other"
  service_account_id = var.flink_service_account_ids["commercial_other"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_tech-platforms_integration_rev_xml.topic_name,
  ]
}

module "flink_service_account_access_commercial_rating" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "commercial"
  sub_portfolio      = "rating"
  service_account_id = var.flink_service_account_ids["commercial_rating"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.commercial_topics.topic_names["topic_commercial_rating_rev-rating_xml"],
    module.topic_operations_linehaul_hr_xml.topic_name,
    module.topic_operations_linehaul_ship_xml.topic_name,
  ]
}

module "flink_service_account_access_operations_dock" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "operations"
  sub_portfolio      = "dock"
  service_account_id = var.flink_service_account_ids["operations_dock"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_operations_dock_dock_xml.topic_name,
    module.topic_operations_dock_ops-dy-be-alerts_xml.topic_name,
    module.topic_operations_dock_ops-edensv_xml.topic_name,
    module.topic_operations_dock_ops-equipment_xml.topic_name,
    module.topic_operations_dock_ops-facility_xml.topic_name,
    module.topic_operations_dock_ops-move-assignment_xml.topic_name,
    module.topic_operations_dock_ops-ode-assignment_xml.topic_name,
    module.topic_operations_dock_ops-work-assignment_xml.topic_name,
    module.topic_operations_dock_ship-sc-dock_xml.topic_name,
    module.topic_operations_linehaul_convey_xml.topic_name,
    module.topic_operations_linehaul_ops-edenmt_xml.topic_name,
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
    module.topic_tech-platforms_data-sefs_cdcfxfle_xml.topic_name,
    module.topic_tech-platforms_data-sefs_sefs-legacy-adapter_xml.topic_name,
    module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name,
    module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml.topic_name,
  ]
}

module "flink_service_account_access_operations_fleet-maintenance" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "operations"
  sub_portfolio      = "fleet-maintenance"
  service_account_id = var.flink_service_account_ids["operations_fleet-maintenance"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_operations_fleet-maintenance_convey-inbound_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
  ]
}

module "flink_service_account_access_operations_linehaul" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "operations"
  sub_portfolio      = "linehaul"
  service_account_id = var.flink_service_account_ids["operations_linehaul"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_operations_dock_ops-move-assignment_xml.topic_name,
    module.topic_operations_dock_screen-shipment-during-transportation_xml.topic_name,
    module.topic_operations_linehaul_convey_xml.topic_name,
    module.topic_operations_linehaul_hr_xml.topic_name,
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
  ]
}

module "flink_service_account_access_operations_pickup-delivery" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "operations"
  sub_portfolio      = "pickup-delivery"
  service_account_id = var.flink_service_account_ids["operations_pickup-delivery"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.back_office_topics.topic_names["topic_back-office_imaging_edm-store-document-response_xml"],
    module.topic_operations_dock_ops-move-assignment_xml.topic_name,
    module.topic_operations_linehaul_hr_xml.topic_name,
    module.topic_operations_linehaul_ship_xml.topic_name,
    module.topic_operations_pickup-delivery_dispatch_xml.topic_name,
    module.topic_operations_pickup-delivery_eden-wss-outbound_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
    module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name,
  ]
}

module "flink_service_account_access_operations_safety" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "operations"
  sub_portfolio      = "safety"
  service_account_id = var.flink_service_account_ids["operations_safety"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_operations_linehaul_hr_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
  ]
}

module "flink_service_account_access_tech-platforms_data-platforms" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "tech-platforms"
  sub_portfolio      = "data-platforms"
  service_account_id = var.flink_service_account_ids["tech-platforms_data-platforms"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc-dw_xml.topic_name,
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
  ]
}

module "flink_service_account_access_tech-platforms_data-sefs" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "tech-platforms"
  sub_portfolio      = "data-sefs"
  service_account_id = var.flink_service_account_ids["tech-platforms_data-sefs"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
    module.topic_tech-platforms_data-sefs_cdcfxfle_xml.topic_name,
    module.topic_tech-platforms_data-sefs_esdsu-cvd_xml.topic_name,
    module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name,
    module.topic_tech-platforms_data-sefs_shipefs-inbound-core_xml.topic_name,
    module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml.topic_name,
    module.topic_tech-platforms_data-sefs_shipefs-sagacomplete_xml.topic_name,
  ]
}

module "flink_service_account_access_tech-platforms_integration-other" {
  source = "../../../eai-3542753-common-tools/terraform/flink-service-account-access"

  env                = var.env
  portfolio          = "tech-platforms"
  sub_portfolio      = "integration-other"
  service_account_id = var.flink_service_account_ids["tech-platforms_integration-other"]

  confluent_cluster = var.confluent_cluster

  source_topics = [
    module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-events_xml"],
    module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-business-events_xml"],
    module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml"],
    module.topic_tech-platforms_data-purescale_cdc_xml.topic_name,
    module.topic_tech-platforms_integration-other_email-notification_xml.topic_name,
    module.topic_tech-platforms_integration-other_imaging-input_xml.topic_name,
  ]
}
