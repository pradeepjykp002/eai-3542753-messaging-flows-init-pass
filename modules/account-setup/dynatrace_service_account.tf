# The Dynatrace monitoring service account for this environment.
# Its RBAC is granted in dynatrace_service_account_access.tf.

module "dynatrace_service_account" {
  source = "../../../eai-3542753-common-tools/terraform/dynatrace-service-account"

  env = var.env
}
