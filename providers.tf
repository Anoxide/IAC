provider "azurerm" {
  skip_provider_registration = true
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "${{ secrets.SUBSCRIPTION_ID }}"
  client_id       = "${{ secrets.CLIENT_ID }}"
  client_secret   = "${{ secrets.CLIENT_SECRET }}"
  tenant_id       = "${{ secrets.TENANT_ID }}"
}
