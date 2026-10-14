# DeveloperRead on every Schema Registry subject in the environment, for the
# environment-wide pool.

module "env_identity_pool_access" {
  source = "../../../eai-3542753-common-tools/terraform/env-identity-pool-access"

  identity_pool_id = module.env_identity_pool.identity_pool_id

  confluent_cluster = var.confluent_cluster
}
