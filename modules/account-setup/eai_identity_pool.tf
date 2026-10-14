# One identity pool per EAI. The topics each may read and write are granted in
# eai_identity_pool_access.tf.

module "eai_identity_pool_4197" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "customer-automation"
  eai                  = "4197"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_4531" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "4531"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_4909" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "customer-automation"
  eai                  = "4909"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_5294" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "5294"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_5338" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "5338"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_5742" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "5742"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_5798" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "5798"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_6068" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "6068"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_6157" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "6157"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_6428" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "6428"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_6836" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "6836"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_6840" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  eai                  = "6840"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7187" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "7187"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7188" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "7188"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7189" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "7189"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7190" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "7190"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7200" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  eai                  = "7200"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7299" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "7299"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7324" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "safety"
  eai                  = "7324"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7326" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "safety"
  eai                  = "7326"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7502" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "7502"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7526" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "7526"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7564" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "7564"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_7596" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "7596"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_87435" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "87435"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_87632" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "international"
  eai                  = "87632"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_87892" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "87892"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_87982" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "87982"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_90047" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration-other"
  eai                  = "90047"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_90082" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "90082"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_103280" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "103280"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_116261" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "116261"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_391473" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "customer-automation"
  eai                  = "391473"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_927173" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "927173"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_927321" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "927321"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_927520" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "927520"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_941303" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "941303"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3530701" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "3530701"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3530913" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-platforms"
  eai                  = "3530913"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3530933" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration-other"
  eai                  = "3530933"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3530949" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "3530949"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3530987" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "3530987"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3530996" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  eai                  = "3530996"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531009" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3531009"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531010" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3531010"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531033" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3531033"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531035" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3531035"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531036" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3531036"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531268" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3531268"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531269" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3531269"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531272" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3531272"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531285" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3531285"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531550" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3531550"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3531640" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3531640"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534531" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3534531"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534533" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3534533"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534630" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "3534630"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534696" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3534696"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534697" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3534697"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534698" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3534698"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534778" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3534778"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3534918" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "3534918"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535472" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "3535472"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535494" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "3535494"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535495" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "claims"
  eai                  = "3535495"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535497" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration"
  eai                  = "3535497"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535505" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "3535505"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535515" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3535515"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535518" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3535518"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535519" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3535519"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535524" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "account-mgmt"
  eai                  = "3535524"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535527" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "pickup-delivery"
  eai                  = "3535527"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535530" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "claims"
  eai                  = "3535530"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535531" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "international"
  eai                  = "3535531"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535535" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3535535"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535537" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3535537"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535550" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "claims"
  eai                  = "3535550"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3535741" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3535741"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3536253" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3536253"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3536255" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3536255"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3536275" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "safety"
  eai                  = "3536275"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3536355" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3536355"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3536650" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration-other"
  eai                  = "3536650"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3536762" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "fleet-maintenance"
  eai                  = "3536762"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3537136" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "3537136"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3537150" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3537150"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3537175" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3537175"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3537679" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "3537679"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3537797" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "3537797"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3537805" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "fleet-maintenance"
  eai                  = "3537805"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538057" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  eai                  = "3538057"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538070" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3538070"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538143" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "other"
  eai                  = "3538143"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538155" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  eai                  = "3538155"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538167" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "billing"
  eai                  = "3538167"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538233" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3538233"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538441" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3538441"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538631" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3538631"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538706" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3538706"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538785" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3538785"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3538856" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-purescale"
  eai                  = "3538856"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539024" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "international"
  eai                  = "3539024"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539047" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "international"
  eai                  = "3539047"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539495" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3539495"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539536" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "other"
  eai                  = "3539536"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539541" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3539541"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539924" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3539924"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539925" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3539925"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539926" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "imaging"
  eai                  = "3539926"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539948" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3539948"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3539966" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3539966"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540102" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3540102"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540203" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3540203"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540269" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3540269"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540270" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3540270"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540290" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "rating"
  eai                  = "3540290"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540305" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3540305"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540564" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "ar-ap"
  eai                  = "3540564"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3540786" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "3540786"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541008" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3541008"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541235" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "dock"
  eai                  = "3541235"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541432" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "operations"
  sub_portfolio        = "linehaul"
  eai                  = "3541432"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541438" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "data-sefs"
  eai                  = "3541438"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541629" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "finance"
  eai                  = "3541629"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541670" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "customer-automation"
  eai                  = "3541670"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3541699" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "back-office"
  sub_portfolio        = "hr"
  eai                  = "3541699"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3542370" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "commercial"
  sub_portfolio        = "custom-critical"
  eai                  = "3542370"
  identity_provider_id = module.identity_provider.identity_provider_id
}

module "eai_identity_pool_3542821" {
  source = "../../../eai-3542753-common-tools/terraform/eai-identity-pool"

  env                  = var.env
  portfolio            = "tech-platforms"
  sub_portfolio        = "integration"
  eai                  = "3542821"
  identity_provider_id = module.identity_provider.identity_provider_id
}
