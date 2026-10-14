# The Terraform admin service account for this environment.
# Its RBAC is granted in env_admin_service_account_access.tf.

module "env_admin_service_account" {
  source = "../../../eai-3542753-common-tools/terraform/env-admin-service-account"

  env = var.env
}
