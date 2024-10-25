provider "azurerm" {
  skip_provider_registration = true
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "$(SUBSCRIPTION_ID)"
  client_id       = "$(CLIENT_ID)"
  client_secret   = "$(CLIENT_SECRET)"
  tenant_id       = "$(TENANT_ID)"
}
