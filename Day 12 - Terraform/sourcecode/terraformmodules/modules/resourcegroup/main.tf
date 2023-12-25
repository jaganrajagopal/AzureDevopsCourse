resource "azurerm_resource_group" "azure_resourcegroup" {
    name = var.resourcename
    location = var.location
      
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  resource_group_name = azurerm_resource_group.azure_resourcegroup.name
  location            = azurerm_resource_group.azure_resourcegroup.location
  address_space       = ["10.0.0.0/16"]
}