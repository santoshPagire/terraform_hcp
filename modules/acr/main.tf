provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
  subscription_id                 = "664b6097-19f2-42a3-be95-a4a6b4069f6b"
}
resource "azurerm_container_registry" "acr" {
  name                = "${var.env}${var.prefix}acr"
  location            = var.location
  resource_group_name = var.resource_group
  sku                 = var.sku
  admin_enabled       = false
}