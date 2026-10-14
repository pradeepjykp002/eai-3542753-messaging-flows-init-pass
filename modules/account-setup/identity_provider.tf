# The Okta provider backing every identity pool in this configuration. Pools
# take its identity_provider_id output rather than a root variable.

module "identity_provider" {
  source = "../../../eai-3542753-common-tools/terraform/identity-provider"

  env         = var.env
  okta_issuer = var.okta_issuer
}
