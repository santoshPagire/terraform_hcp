# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    #   version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = var.ARM_SUBSCRIPTION_ID
    tenant_id = var.ARM_TENANT_ID
#   resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  

}
provider "azuread" {
   use_cli = "false"
}


# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = "sa1_test_eic_SantoshPagire"
  location            = "southeastasia"
  address_space       = ["10.0.0.0/16"]
}