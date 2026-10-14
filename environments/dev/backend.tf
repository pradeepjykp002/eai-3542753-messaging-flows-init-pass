# State is kept locally until the remote state storage account is provisioned.
# To migrate, swap the two backend blocks below and run `tofu init -migrate-state`.

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  # backend "azurerm" {
  #   resource_group_name  = "<tfstate-resource-group>"
  #   storage_account_name = "<tfstate-storage-account>"
  #   container_name       = "tfstate"
  #   key                  = "eai-3542753-messaging-flows/dev/terraform.tfstate"
  # }
}

# State and plan files are encrypted, so they can be committed. The passphrase
# comes from TF_VAR_state_encryption_passphrase in env.sh.
terraform {
  encryption {
    key_provider "pbkdf2" "main" {
      passphrase = var.state_encryption_passphrase
    }

    method "aes_gcm" "main" {
      keys = key_provider.pbkdf2.main
    }

    state {
      method   = method.aes_gcm.main
      enforced = true
    }

    plan {
      method   = method.aes_gcm.main
      enforced = true
    }
  }
}
