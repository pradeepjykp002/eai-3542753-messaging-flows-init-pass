module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-purescale_cdc_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-purescale_cdc_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_cdc-abol-header_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'ABOL_HEADER'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-af-calendar_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'AF_CALENDAR'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-appointment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'APPOINTMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-appt-shipment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'APPT_SHIPMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-bus-cd-translation_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'BUS_CD_TRANSLATION'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-ca-cash-addr_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CA_CASH_ADDR'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-carr-profile-hdr_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CARR_PROFILE_HDR'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-cust-center-group_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CENTER_GROUP'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-cust-center-misc_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CENTER_MISC'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-cust-ctr-bus-ref_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_CTR_BUS_REF'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-cust-map-loc_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_MAP_LOC'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-cust-wkly-calendar_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUST_WKLY_CALENDAR'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-customer-address_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUSTOMER_ADDRESS'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-customer-contact_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUSTOMER_CONTACT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-customer-profile_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'CUSTOMER_PROFILE'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-delivery-stop-req_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'DELIVERY_STOP_REQ'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-driver_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'DRIVER'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-equipment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'EQUIPMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-evt-subscrptn_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'EVT_SUBSCRPTN'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-fb-corr-req-cmnt_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'FB_CORR_REQ_CMNT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-fxf-empl-ns-vw_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'FXF_EMPL_NS_VW'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-gateway-transfer_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'GATEWAY_TRANSFER'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-location-master_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'LOCATION_MASTER'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-manifest-item-hist_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'MANIFEST_ITEM_HIST'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-ob-door-definition_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'OB_DOOR_DEFINITION'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-osd-comment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'OSD_COMMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-osd-disp-req-cmt_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'OSD_DISP_REQ_CMT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-pars-shipment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PARS_SHIPMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-pickup-stop-req-legacy_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PICKUP_STOP_REQ'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-publsh-evt-shp-dtl_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'PUBLSH_EVT_SHP_DTL'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-ship-in-jeopardy_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIP_IN_JEOPARDY'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-ship-party-contact_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIP_PARTY_CONTACT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-ship-pickup-hist_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIP_PICKUP_HIST'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-comments_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_COMMENTS'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-item-nmfc_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ITEM' AND DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'NMFC-SHIP'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-item_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ITEM'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-load-to_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOAD_TO'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-location_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOCATION'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-party_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_PARTY'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment-route_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_ROUTE'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shipment_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-absolute_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_ABSOLUTE'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-billto-xref_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_BILLTO_XREF'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-bol-xref_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_BOL_XREF'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-delete-audit_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_DELETE_AUDIT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-delivery-hist_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_DELIVERY_HIST'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-distress_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_DISTRESS'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-event-audit_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_EVENT_AUDIT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-movement-legacy_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_MOVEMENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-osd-incident_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_OSD_INCIDENT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-po-nbr-xref_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_PO_NBR_XREF'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-snbr-nbr-xref_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_SNBR_NBR_XREF'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-shp-value-audit_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_VALUE_AUDIT'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-suspense-load-to_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SUSPENSE_LOAD_TO'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-tfmtb021_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB021'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-tfmtb036-legacy_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB036'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-tfmtb070_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB070'" },
    { topic = module.topic_tech-platforms_data-sefs_cdc-zip-city-service_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgSource', 'UTF-8')], 'UTF-8') <> 'PURESCALE' AND DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'ZIP_CITY_SERVICE'" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}

module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-sefs_cdcfxfle_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-sefs_cdcfxfle_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-abol-data_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'LEGACY_ABOL_DATA' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-appt-shipment_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'APPT_SHIPMENT_SEFS' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-consolidation_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'LEGACY_CONSOLIDATION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-delivery_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'DELIVERY' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-exception_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'EXCEPTION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-migration-data_xml.topic_name, filter = "headers[ENCODE('beMigration', 'UTF-8')] IS NULL" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-ship-pickup-hist_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIP_PICKUP_HIST' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-shipment-comments_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_COMMENTS' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-shipment-data_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_eventCode', 'UTF-8')], 'UTF-8') = 'LEGACY_SHIPMENT_DATA' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-shipment-location_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHIPMENT_LOCATION' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-shp-osd-incident_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'SHP_OSD_INCIDENT' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
    { topic = module.topic_tech-platforms_data-sefs_cdcfxfle-tfmtb070_xml.topic_name, filter = "DECODE(headers[ENCODE('FX_tableName', 'UTF-8')], 'UTF-8') = 'TFMTB070' AND DECODE(headers[ENCODE('beMigration', 'UTF-8')], 'UTF-8') = 'true'" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}

module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-sefs_esdsu-cvd_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-sefs_esdsu-cvd_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-fmqa-fxe_xml.topic_name, filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FXE', 'FX', 'EXPRESS') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'FMQA'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-fmqa-fxf_xml.topic_name, filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FXF', 'FDFR', 'FREIGHT') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'FMQA'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-fmqa-fxg_xml.topic_name, filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FXG', 'FDEG', 'GROUND') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'FMQA'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-fxe_xml.topic_name, filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FXE', 'FX', 'EXPRESS') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'IPC'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-fxf_xml.topic_name, filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FXF', 'FDFR', 'FREIGHT') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'IPC'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-fxg_xml.topic_name, filter = "DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') IN ('FXG', 'FDEG', 'GROUND') AND DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'IPC'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-out_xml.topic_name, filter = "DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') = 'OUT'" },
    { topic = module.topic_tech-platforms_data-sefs_esdsu-cvd-undelivered_xml.topic_name, filter = "headers[ENCODE('CarrierCode', 'UTF-8')] IS NULL OR headers[ENCODE('cvddest', 'UTF-8')] IS NULL OR DECODE(headers[ENCODE('CarrierCode', 'UTF-8')], 'UTF-8') NOT IN ('FXE', 'FX', 'EXPRESS', 'FXF', 'FDFR', 'FREIGHT', 'FXG', 'FDEG', 'GROUND') OR DECODE(headers[ENCODE('cvddest', 'UTF-8')], 'UTF-8') NOT IN ('IPC', 'FMQA', 'OUT', 'FXFD_TRAC')" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}

module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-sefs_ship-app-notification_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-sefs_ship-app-notification_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_ship-app-notification-asset-amtn_xml.topic_name, filter = "DECODE(headers[ENCODE('Carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('TransportationEvent') AND DECODE(headers[ENCODE('fxfEventType', 'UTF-8')], 'UTF-8') IN ('PICKUP', 'REVENUE', 'CUSTOMER_ORDERS') AND DECODE(headers[ENCODE('fxfEventSubType', 'UTF-8')], 'UTF-8') IN ('CUSTOMER_ORDER', 'ASSOCIATE', 'PICKUP', 'DOCK_DROP', 'PICKUP_EXCEPTION', 'RATING', 'RECORD_COMPLETION') AND DECODE(headers[ENCODE('recordType', 'UTF-8')], 'UTF-8') = 'SHIPMENT'" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}

module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-sefs_shipefs-inbound-core_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-sefs_shipefs-inbound-core_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_shipefs-inbound-core-adapter_xml.topic_name, filter = "DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND headers[ENCODE('HydrationStatus', 'UTF-8')] IS NOT NULL AND DECODE(headers[ENCODE('HydrationStatus', 'UTF-8')], 'UTF-8') IN ('no-hydration-necessary', 'hydration-complete', 'hydration-in-progress', 'hydration-unknown')" },
    { topic = module.topic_tech-platforms_data-sefs_shipefs-inbound-core-miggate_xml.topic_name, filter = "DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') = 'TransportationEvent' AND headers[ENCODE('UseSefs2', 'UTF-8')] IS NULL AND headers[ENCODE('HydrationStatus', 'UTF-8')] IS NULL" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}

module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter-consolidation_xml.topic_name, filter = "DECODE(headers[ENCODE('carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('CoreConsolidationChange')" },
    { topic = module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter-custvisdv_xml.topic_name, filter = "DECODE(headers[ENCODE('carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('CoreShipmentChange')" },
    { topic = module.topic_tech-platforms_data-sefs_shipefs-outbound-adapter-shipment_xml.topic_name, filter = "DECODE(headers[ENCODE('carrier', 'UTF-8')], 'UTF-8') = 'FXF' AND DECODE(headers[ENCODE('messageType', 'UTF-8')], 'UTF-8') IN ('CoreShipmentChange')" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}

module "flink_statement_set_tech-platforms_data-sefs_from_topic_tech-platforms_data-sefs_shipefs-sagacomplete_xml" {
  source = "../../../eai-3542753-common-tools/terraform/flink-statement-set"

  portfolio     = "tech-platforms"
  sub_portfolio = "data-sefs"
  source_topic  = module.topic_tech-platforms_data-sefs_shipefs-sagacomplete_xml.topic_name

  sinks = [
    { topic = module.topic_tech-platforms_data-sefs_shipefs-sagacomplete-adapter_xml.topic_name, filter = "DECODE(headers[ENCODE('MsgType', 'UTF-8')], 'UTF-8') = 'ManageShipmentSagaComplete'" },
  ]

  confluent_cluster = local.tech-platforms_data-sefs_statement_cluster
  flink_credentials = var.flink_credentials

  # The service account's roles must exist before a statement runs as it;
  # Confluent rejects the statement otherwise.
  depends_on = [module.flink_service_account_access_tech-platforms_data-sefs]
}
