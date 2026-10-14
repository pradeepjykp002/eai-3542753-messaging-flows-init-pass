module "dynatrace_service_account_access" {
  source = "../../../eai-3542753-common-tools/terraform/dynatrace-service-account-access"

  principal_id = module.dynatrace_service_account.service_account_id

  confluent_cluster = var.confluent_cluster
}
