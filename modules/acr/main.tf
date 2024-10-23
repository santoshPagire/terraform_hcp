
resource "azurerm_container_registry" "acr" {
  name                = "${var.env}${var.prefix}acr"
  location            = var.location
  resource_group_name = var.resource_group
  sku                 = var.sku
  admin_enabled       = false
}