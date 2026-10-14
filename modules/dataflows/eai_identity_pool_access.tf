# Per-topic ACLs for each EAI's identity pool, plus the consumer-group,
# share-group, and transactional-id prefixes the access module grants itself.
#
# READ on a topic in the EAI's own subportfolio is absent on purpose: the
# subportfolio pool's DeveloperRead already covers that prefix.

module "eai_identity_pool_access_4197" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "4197"
  identity_pool_id = var.eai_identity_pool_ids["4197"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_sdms-cevnt_xml"])         = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_sdms-edw_xml"])           = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_sdms-epdi_xml"])          = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_sdms-shipment-data_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_sdms-visa_xml"])          = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr_xml"])        = ["WRITE"]
  }
}

module "eai_identity_pool_access_4531" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "4531"
  identity_pool_id = var.eai_identity_pool_ids["4531"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_4909" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "4909"
  identity_pool_id = var.eai_identity_pool_ids["4909"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_sdms-cevnt_xml"])  = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_trackingnbr_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_5294" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "5294"
  identity_pool_id = var.eai_identity_pool_ids["5294"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints_xml"])  = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_dock_eden-dnymt_xml.topic_name)                             = ["WRITE"]
    (module.topic_operations_dock_ops-edensv_xml.topic_name)                             = ["WRITE"]
    (module.topic_operations_dock_ops-move-assignment_xml.topic_name)                    = ["WRITE"]
    (module.topic_operations_dock_ops-ode-assignment_xml.topic_name)                     = ["WRITE"]
  }
}

module "eai_identity_pool_access_5338" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "5338"
  identity_pool_id = var.eai_identity_pool_ids["5338"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_eden-dnymt_xml.topic_name)         = ["WRITE"]
    (module.topic_operations_dock_ops-edensv_xml.topic_name)         = ["WRITE"]
    (module.topic_operations_dock_ops-ode-assignment_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_5742" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "5742"
  identity_pool_id = var.eai_identity_pool_ids["5742"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_5798" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "5798"
  identity_pool_id = var.eai_identity_pool_ids["5798"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
    (module.topic_operations_pickup-delivery_eden-render-requests_xml.topic_name)        = ["WRITE"]
  }
}

module "eai_identity_pool_access_6068" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "6068"
  identity_pool_id = var.eai_identity_pool_ids["6068"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-edcw-error_xml"])       = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep-edcw-processinit_xml"]) = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_genesis-genprep_xml"])                  = ["WRITE"]
  }
}

module "eai_identity_pool_access_6157" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "6157"
  identity_pool_id = var.eai_identity_pool_ids["6157"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_eden-dnymt_xml.topic_name)         = ["WRITE"]
    (module.topic_operations_dock_ops-ode-assignment_xml.topic_name) = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)           = ["WRITE"]
  }
}

module "eai_identity_pool_access_6428" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "6428"
  identity_pool_id = var.eai_identity_pool_ids["6428"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_dock_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_6836" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "6836"
  identity_pool_id = var.eai_identity_pool_ids["6836"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_custom-critical_lme-webservice_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-events_xml"])     = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs2dtts_xml.topic_name)                       = ["READ"]
    (module.topic_tech-platforms_integration-other_driver-pilot-drivert_xml.topic_name)           = ["WRITE"]
    (module.topic_tech-platforms_integration-other_temp-log-integration-events_xml.topic_name)    = ["READ", "WRITE"]
  }
}

module "eai_identity_pool_access_6840" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "6840"
  identity_pool_id = var.eai_identity_pool_ids["6840"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_billing_autocoder-reject_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_billing_autocoder-retry_xml"])  = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_billing_autocoder_xml"])        = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                                  = ["WRITE"]
  }
}

module "eai_identity_pool_access_7187" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7187"
  identity_pool_id = var.eai_identity_pool_ids["7187"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_7188" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7188"
  identity_pool_id = var.eai_identity_pool_ids["7188"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7189" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7189"
  identity_pool_id = var.eai_identity_pool_ids["7189"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7190" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7190"
  identity_pool_id = var.eai_identity_pool_ids["7190"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7200" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7200"
  identity_pool_id = var.eai_identity_pool_ids["7200"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_billing_ship-generate-ebol_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7299" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7299"
  identity_pool_id = var.eai_identity_pool_ids["7299"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_cdcfxfle-shp-movement_xml.topic_name) = ["WRITE"]
    (module.topic_operations_dock_dock_xml.topic_name)                  = ["WRITE"]
    (module.topic_operations_dock_ops-dy-be-alerts_xml.topic_name)      = ["WRITE"]
    (module.topic_operations_dock_ops-equipment_xml.topic_name)         = ["WRITE"]
    (module.topic_operations_dock_ops-facility_xml.topic_name)          = ["WRITE"]
    (module.topic_operations_dock_ops-move-assignment_xml.topic_name)   = ["WRITE"]
    (module.topic_operations_dock_ops-work-assignment_xml.topic_name)   = ["WRITE"]
    (module.topic_operations_linehaul_convey_xml.topic_name)            = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)              = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_cdcfxfle_xml.topic_name)     = ["WRITE"]
  }
}

module "eai_identity_pool_access_7324" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7324"
  identity_pool_id = var.eai_identity_pool_ids["7324"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name)                   = ["WRITE"]
    (module.topic_operations_safety_server-discovery-reply_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7326" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7326"
  identity_pool_id = var.eai_identity_pool_ids["7326"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_7502" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7502"
  identity_pool_id = var.eai_identity_pool_ids["7502"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_sefs-legacy-adapter_xml.topic_name)   = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name)     = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7526" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7526"
  identity_pool_id = var.eai_identity_pool_ids["7526"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration-other_imaging-input_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_7564" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7564"
  identity_pool_id = var.eai_identity_pool_ids["7564"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_7596" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "7596"
  identity_pool_id = var.eai_identity_pool_ids["7596"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_87435" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "87435"
  identity_pool_id = var.eai_identity_pool_ids["87435"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration-other_crs_xml.topic_name)                = ["WRITE"]
    (module.topic_tech-platforms_integration-other_email-notification_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_87632" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "87632"
  identity_pool_id = var.eai_identity_pool_ids["87632"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_87892" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "87892"
  identity_pool_id = var.eai_identity_pool_ids["87892"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration-other_email-notification_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_87982" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "87982"
  identity_pool_id = var.eai_identity_pool_ids["87982"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration-other_imaging-input_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_90047" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "90047"
  identity_pool_id = var.eai_identity_pool_ids["90047"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_custom-critical_lme-webservice_xml"])        = ["READ"]
    (module.topic_tech-platforms_integration-other_airclic-fxcc_xml.topic_name)                          = ["WRITE"]
    (module.topic_tech-platforms_integration-other_any-ftm-fmqa_xml.topic_name)                          = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-cip-response_xml.topic_name)                      = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-exception_xml.topic_name)                         = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-loadopp-response_xml.topic_name)                  = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-log_xml.topic_name)                               = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-nlm-response_xml.topic_name)                      = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-osc-response_xml.topic_name)                      = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-t-qual-return_xml.topic_name)                     = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs-vru_xml.topic_name)                               = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs_xml.topic_name)                                   = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs2cti_xml.topic_name)                               = ["WRITE"]
    (module.topic_tech-platforms_integration-other_crs2dtts_xml.topic_name)                              = ["WRITE"]
    (module.topic_tech-platforms_integration-other_cti2crs_xml.topic_name)                               = ["WRITE"]
    (module.topic_tech-platforms_integration-other_definition-ei_xml.topic_name)                         = ["WRITE"]
    (module.topic_tech-platforms_integration-other_driver-pilot-drivert_xml.topic_name)                  = ["WRITE"]
    (module.topic_tech-platforms_integration-other_edi_xml.topic_name)                                   = ["WRITE"]
    (module.topic_tech-platforms_integration-other_email-notification_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration-other_expediter-ord_xml.topic_name)                         = ["WRITE"]
    (module.topic_tech-platforms_integration-other_fms-ship-status-nlm-delay_xml.topic_name)             = ["WRITE"]
    (module.topic_tech-platforms_integration-other_fms-ship-status_xml.topic_name)                       = ["WRITE"]
    (module.topic_tech-platforms_integration-other_fusion-ftmrj_xml.topic_name)                          = ["WRITE"]
    (module.topic_tech-platforms_integration-other_fxeftm-ei_xml.topic_name)                             = ["WRITE"]
    (module.topic_tech-platforms_integration-other_imaging-input_xml.topic_name)                         = ["WRITE"]
    (module.topic_tech-platforms_integration-other_mrm-exception_xml.topic_name)                         = ["WRITE"]
    (module.topic_tech-platforms_integration-other_mrm-log_xml.topic_name)                               = ["WRITE"]
    (module.topic_tech-platforms_integration-other_shipment-fusion-bwnotification-delay_xml.topic_name)  = ["WRITE"]
    (module.topic_tech-platforms_integration-other_shipment-fusion-customer-notification_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_integration-other_shipment-fusion-edi-delay_xml.topic_name)             = ["WRITE"]
    (module.topic_tech-platforms_integration-other_shipment-fusion-edi_xml.topic_name)                   = ["WRITE"]
    (module.topic_tech-platforms_integration-other_shipment-fusion-noi-request_xml.topic_name)           = ["WRITE"]
    (module.topic_tech-platforms_integration-other_shipment-fusion-osm_xml.topic_name)                   = ["WRITE"]
    (module.topic_tech-platforms_integration-other_temp-log-integration-events_xml.topic_name)           = ["WRITE"]
    (module.topic_tech-platforms_integration-other_temp-log-integration_xml.topic_name)                  = ["WRITE"]
    (module.topic_tech-platforms_integration-other_tempstatus-ei_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_90082" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "90082"
  identity_pool_id = var.eai_identity_pool_ids["90082"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_custom-critical_any-email-notification_xml"]) = ["WRITE"]
    (module.topic_tech-platforms_integration-other_mrm-log_xml.topic_name)                                = ["WRITE"]
  }
}

module "eai_identity_pool_access_103280" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "103280"
  identity_pool_id = var.eai_identity_pool_ids["103280"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration-other_tempstatus-ei_xml.topic_name) = ["READ"]
  }
}

module "eai_identity_pool_access_116261" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "116261"
  identity_pool_id = var.eai_identity_pool_ids["116261"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ebi-event-notify_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_391473" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "391473"
  identity_pool_id = var.eai_identity_pool_ids["391473"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_customer-automation_esdsu-cvd-reject_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_927173" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "927173"
  identity_pool_id = var.eai_identity_pool_ids["927173"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name)             = ["WRITE"]
  }
}

module "eai_identity_pool_access_927321" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "927321"
  identity_pool_id = var.eai_identity_pool_ids["927321"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_927520" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "927520"
  identity_pool_id = var.eai_identity_pool_ids["927520"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_eden-dnymt_xml.topic_name)                           = ["WRITE"]
    (module.topic_operations_pickup-delivery_convey-wss-geomsgs-consmt_xml.topic_name) = ["WRITE"]
    (module.topic_operations_pickup-delivery_eden-wss-outbound_xml.topic_name)         = ["WRITE"]
  }
}

module "eai_identity_pool_access_941303" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "941303"
  identity_pool_id = var.eai_identity_pool_ids["941303"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3530701" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3530701"
  identity_pool_id = var.eai_identity_pool_ids["3530701"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3530913" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3530913"
  identity_pool_id = var.eai_identity_pool_ids["3530913"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3530933" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3530933"
  identity_pool_id = var.eai_identity_pool_ids["3530933"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3530949" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3530949"
  identity_pool_id = var.eai_identity_pool_ids["3530949"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_accops-ftmrj_xml.topic_name)                   = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_esdsu-cvd-legacy_xml.topic_name)               = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_esdsu-cvd_xml.topic_name)                      = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_fdeg-as400-ftmrj_xml.topic_name)               = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-ftmrj_xml.topic_name)                     = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_shipefs-fxg-outbound-custvisdv_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3530987" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3530987"
  identity_pool_id = var.eai_identity_pool_ids["3530987"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration-other_mrm-exception_xml.topic_name) = ["READ"]
    (module.topic_tech-platforms_integration-other_mrm-log_xml.topic_name)       = ["READ"]
  }
}

module "eai_identity_pool_access_3530996" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3530996"
  identity_pool_id = var.eai_identity_pool_ids["3530996"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531009" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531009"
  identity_pool_id = var.eai_identity_pool_ids["3531009"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ops-edenmt_xml.topic_name)                         = ["WRITE"]
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
    (module.topic_operations_pickup-delivery_eden-render-requests_xml.topic_name)        = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531010" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531010"
  identity_pool_id = var.eai_identity_pool_ids["3531010"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531033" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531033"
  identity_pool_id = var.eai_identity_pool_ids["3531033"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531035" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531035"
  identity_pool_id = var.eai_identity_pool_ids["3531035"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_pickup-delivery_dynamic-map-render-requests_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name)             = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531036" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531036"
  identity_pool_id = var.eai_identity_pool_ids["3531036"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_hr_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531268" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531268"
  identity_pool_id = var.eai_identity_pool_ids["3531268"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name)                   = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531269" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531269"
  identity_pool_id = var.eai_identity_pool_ids["3531269"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name)                   = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531272" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531272"
  identity_pool_id = var.eai_identity_pool_ids["3531272"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3531285" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531285"
  identity_pool_id = var.eai_identity_pool_ids["3531285"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_ship-sc-dock_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531550" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531550"
  identity_pool_id = var.eai_identity_pool_ids["3531550"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-store-document-request_xml"]) = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name)                            = ["WRITE"]
  }
}

module "eai_identity_pool_access_3531640" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3531640"
  identity_pool_id = var.eai_identity_pool_ids["3531640"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3534531" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534531"
  identity_pool_id = var.eai_identity_pool_ids["3534531"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints-ebol-retry_xml"]) = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints_xml"])            = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"])           = ["WRITE"]
    (module.topic_operations_dock_dock_xml.topic_name)                                             = ["WRITE"]
  }
}

module "eai_identity_pool_access_3534533" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534533"
  identity_pool_id = var.eai_identity_pool_ids["3534533"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints-ebol-retry_xml"])  = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints-ebol-retry2_xml"]) = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints_xml"])             = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"])            = ["WRITE"]
  }
}

module "eai_identity_pool_access_3534630" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534630"
  identity_pool_id = var.eai_identity_pool_ids["3534630"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3534696" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534696"
  identity_pool_id = var.eai_identity_pool_ids["3534696"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ops-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                              = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name)            = ["WRITE"]
  }
}

module "eai_identity_pool_access_3534697" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534697"
  identity_pool_id = var.eai_identity_pool_ids["3534697"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_convey_xml.topic_name)     = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)         = ["WRITE"]
    (module.topic_operations_linehaul_ops-edenmt_xml.topic_name) = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)       = ["WRITE"]
  }
}

module "eai_identity_pool_access_3534698" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534698"
  identity_pool_id = var.eai_identity_pool_ids["3534698"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3534778" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534778"
  identity_pool_id = var.eai_identity_pool_ids["3534778"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_driverpickup-reject_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_rating_driverpickup-retry_xml"])  = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_rating_ship-reject_xml"])         = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_rating_ship-retry_xml"])          = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                                    = ["WRITE"]
  }
}

module "eai_identity_pool_access_3534918" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3534918"
  identity_pool_id = var.eai_identity_pool_ids["3534918"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-business-events_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_custom-critical_ods-shared-view-publisher-table-changes_xml"])   = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535472" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535472"
  identity_pool_id = var.eai_identity_pool_ids["3535472"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535494" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535494"
  identity_pool_id = var.eai_identity_pool_ids["3535494"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_convey_xml.topic_name)                             = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535495" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535495"
  identity_pool_id = var.eai_identity_pool_ids["3535495"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535497" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535497"
  identity_pool_id = var.eai_identity_pool_ids["3535497"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration_rev_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535505" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535505"
  identity_pool_id = var.eai_identity_pool_ids["3535505"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535515" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535515"
  identity_pool_id = var.eai_identity_pool_ids["3535515"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_convey_xml.topic_name)          = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)              = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)            = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)      = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535518" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535518"
  identity_pool_id = var.eai_identity_pool_ids["3535518"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_convey_xml.topic_name)          = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)            = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)      = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535519" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535519"
  identity_pool_id = var.eai_identity_pool_ids["3535519"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_convey_xml.topic_name)          = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)            = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)      = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535524" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535524"
  identity_pool_id = var.eai_identity_pool_ids["3535524"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535527" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535527"
  identity_pool_id = var.eai_identity_pool_ids["3535527"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_convey_xml.topic_name)                             = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535530" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535530"
  identity_pool_id = var.eai_identity_pool_ids["3535530"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535531" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535531"
  identity_pool_id = var.eai_identity_pool_ids["3535531"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_billing_autocoder_xml"])     = ["WRITE"]
    (module.topic_operations_linehaul_convey_xml.topic_name)                             = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535535" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535535"
  identity_pool_id = var.eai_identity_pool_ids["3535535"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_convey_xml.topic_name)          = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)            = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)      = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535537" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535537"
  identity_pool_id = var.eai_identity_pool_ids["3535537"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration_rev_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535550" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535550"
  identity_pool_id = var.eai_identity_pool_ids["3535550"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3535741" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3535741"
  identity_pool_id = var.eai_identity_pool_ids["3535741"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3536253" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3536253"
  identity_pool_id = var.eai_identity_pool_ids["3536253"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3536255" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3536255"
  identity_pool_id = var.eai_identity_pool_ids["3536255"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_ship-sc-dock_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3536275" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3536275"
  identity_pool_id = var.eai_identity_pool_ids["3536275"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3536355" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3536355"
  identity_pool_id = var.eai_identity_pool_ids["3536355"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3536650" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3536650"
  identity_pool_id = var.eai_identity_pool_ids["3536650"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3536762" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3536762"
  identity_pool_id = var.eai_identity_pool_ids["3536762"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_fleet-maintenance_convey-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3537136" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3537136"
  identity_pool_id = var.eai_identity_pool_ids["3537136"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_shipefs-inbound-core_xml.topic_name)     = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_shipefs-sagacomplete_xml.topic_name)     = ["WRITE"]
  }
}

module "eai_identity_pool_access_3537150" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3537150"
  identity_pool_id = var.eai_identity_pool_ids["3537150"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3537175" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3537175"
  identity_pool_id = var.eai_identity_pool_ids["3537175"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3537679" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3537679"
  identity_pool_id = var.eai_identity_pool_ids["3537679"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3537797" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3537797"
  identity_pool_id = var.eai_identity_pool_ids["3537797"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_shipefs-inbound-core_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3537805" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3537805"
  identity_pool_id = var.eai_identity_pool_ids["3537805"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_fleet-maintenance_cdc-equip-retry_xml.topic_name)   = ["WRITE"]
    (module.topic_operations_fleet-maintenance_cdc-invoice-retry_xml.topic_name) = ["WRITE"]
    (module.topic_operations_fleet-maintenance_convey-inbound_xml.topic_name)    = ["WRITE"]
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name)       = ["WRITE"]
    (module.topic_tech-platforms_data-purescale_cdc_xml.topic_name)              = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538057" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538057"
  identity_pool_id = var.eai_identity_pool_ids["3538057"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538070" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538070"
  identity_pool_id = var.eai_identity_pool_ids["3538070"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-docevent_xml"])                = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-notify-customer_xml"])         = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-rendition_xml"])               = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-resubmit-document_xml"])       = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-store-document-request_xml"])  = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-store-document-response_xml"]) = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-store_xml"])                   = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538143" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538143"
  identity_pool_id = var.eai_identity_pool_ids["3538143"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration_rev_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538155" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538155"
  identity_pool_id = var.eai_identity_pool_ids["3538155"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538167" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538167"
  identity_pool_id = var.eai_identity_pool_ids["3538167"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538233" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538233"
  identity_pool_id = var.eai_identity_pool_ids["3538233"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_img_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538441" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538441"
  identity_pool_id = var.eai_identity_pool_ids["3538441"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_img_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538631" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538631"
  identity_pool_id = var.eai_identity_pool_ids["3538631"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538706" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538706"
  identity_pool_id = var.eai_identity_pool_ids["3538706"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3538785" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538785"
  identity_pool_id = var.eai_identity_pool_ids["3538785"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-das-reply_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-das_xml"])       = ["WRITE"]
  }
}

module "eai_identity_pool_access_3538856" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3538856"
  identity_pool_id = var.eai_identity_pool_ids["3538856"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-purescale_cdc-dw_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_data-purescale_cdc_xml.topic_name)    = ["WRITE"]
  }
}

module "eai_identity_pool_access_3539024" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539024"
  identity_pool_id = var.eai_identity_pool_ids["3539024"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3539047" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539047"
  identity_pool_id = var.eai_identity_pool_ids["3539047"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_ship-prints_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_billing_autocoder_xml"])     = ["WRITE"]
    (module.topic_operations_linehaul_convey_xml.topic_name)                             = ["WRITE"]
    (module.topic_operations_linehaul_hr_xml.topic_name)                                 = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
    (module.topic_operations_pickup-delivery_dispatch_xml.topic_name)                    = ["WRITE"]
    (module.topic_tech-platforms_integration_rev_xml.topic_name)                         = ["WRITE"]
  }
}

module "eai_identity_pool_access_3539495" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539495"
  identity_pool_id = var.eai_identity_pool_ids["3539495"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-fxf_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3539536" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539536"
  identity_pool_id = var.eai_identity_pool_ids["3539536"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3539541" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539541"
  identity_pool_id = var.eai_identity_pool_ids["3539541"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3539924" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539924"
  identity_pool_id = var.eai_identity_pool_ids["3539924"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3539925" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539925"
  identity_pool_id = var.eai_identity_pool_ids["3539925"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-archive-error_xml"]) = ["WRITE"]
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-archive_xml"])       = ["WRITE"]
  }
}

module "eai_identity_pool_access_3539926" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539926"
  identity_pool_id = var.eai_identity_pool_ids["3539926"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-error-tem_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3539948" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539948"
  identity_pool_id = var.eai_identity_pool_ids["3539948"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3539966" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3539966"
  identity_pool_id = var.eai_identity_pool_ids["3539966"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_screen-shipment-during-transportation_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540102" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540102"
  identity_pool_id = var.eai_identity_pool_ids["3540102"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating_xml"])                   = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_rating_ship-app-notification-rating_xml"]) = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name)                       = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540203" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540203"
  identity_pool_id = var.eai_identity_pool_ids["3540203"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_dock_ship-inspection-revenue-notification_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540269" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540269"
  identity_pool_id = var.eai_identity_pool_ids["3540269"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540270" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540270"
  identity_pool_id = var.eai_identity_pool_ids["3540270"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540290" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540290"
  identity_pool_id = var.eai_identity_pool_ids["3540290"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating-das_xml"]) = ["WRITE"]
    (module.commercial_topics.topic_names["topic_commercial_rating_rev-rating_xml"])     = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540305" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540305"
  identity_pool_id = var.eai_identity_pool_ids["3540305"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_ar-ap_ship-adjustment_xml"]) = ["READ"]
    (module.topic_operations_dock_ship-inspection-notification_xml.topic_name)           = ["WRITE"]
    (module.topic_operations_linehaul_ship_xml.topic_name)                               = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540564" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540564"
  identity_pool_id = var.eai_identity_pool_ids["3540564"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.commercial_topics.topic_names["topic_commercial_ar-ap_ship-adjustment_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3540786" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3540786"
  identity_pool_id = var.eai_identity_pool_ids["3540786"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_imaging_edm-store_xml"]) = ["READ"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name)           = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_shipefs-inbound-core_xml.topic_name)        = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541008" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541008"
  identity_pool_id = var.eai_identity_pool_ids["3541008"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541235" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541235"
  identity_pool_id = var.eai_identity_pool_ids["3541235"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-platforms_dw-inbound_xml.topic_name)   = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541432" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541432"
  identity_pool_id = var.eai_identity_pool_ids["3541432"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541438" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541438"
  identity_pool_id = var.eai_identity_pool_ids["3541438"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_data-sefs_cdcfxfle-reprocess_xml.topic_name) = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_cdcfxfle_xml.topic_name)           = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541629" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541629"
  identity_pool_id = var.eai_identity_pool_ids["3541629"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_finance_agencyinterface_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541670" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541670"
  identity_pool_id = var.eai_identity_pool_ids["3541670"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_operations_linehaul_ship_xml.topic_name)                   = ["WRITE"]
    (module.topic_tech-platforms_data-sefs_sefs-sdom-gateway_xml.topic_name) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3541699" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3541699"
  identity_pool_id = var.eai_identity_pool_ids["3541699"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.back_office_topics.topic_names["topic_back-office_hr_timekeeping_xml"]) = ["WRITE"]
  }
}

module "eai_identity_pool_access_3542370" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3542370"
  identity_pool_id = var.eai_identity_pool_ids["3542370"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
  }
}

module "eai_identity_pool_access_3542821" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool-access"

  env              = var.env
  eai              = "3542821"
  identity_pool_id = var.eai_identity_pool_ids["3542821"]

  confluent_cluster = var.confluent_cluster

  topic_acls = {
    (module.topic_tech-platforms_integration_enp-request_xml.topic_name)  = ["WRITE"]
    (module.topic_tech-platforms_integration_enp-response_xml.topic_name) = ["WRITE"]
  }
}
