resource "azurerm_virtual_network" "azure_virtualnetwork" {
    name = "azure_web_virtual_network"
    address_space = ["10.0.0.0/28"]   
    resource_group_name = var.resourcegroupname
    location = var.location
    tags = local.commaninfo
    # subnet {
    #     name ="websubtnet"
    #     address_prefix = "10.0.0.1/29"
    # }  
    
    # dynamic "subnet" {
    #     for_each = var.network_subnet
    #     content {
    #       name = subnet.key
    #       address_prefix =   subnet.value
    #     }
      
    # }
  
}

locals {
  serviceowner="benz"
  billingcentre="8345935"
} 

locals {
  commaninfo = {
    billservicecentre =local.serviceowner
    billingcostcentre = local.billingcentre
  }
}

resource "azurerm_subnet" "azurerm_webapps_subnet" {
    name = "azure_webapp_subnet"
    address_prefixes = ["10.0.0.0/29"]
    resource_group_name = azurerm_resource_group.azure_resourcegroup.name
    virtual_network_name = azurerm_virtual_network.azure_virtualnetwork.name
  
}

resource "azurerm_public_ip" "webapppublicip" {
  name                = "webapppublicip"
  resource_group_name = azurerm_resource_group.azure_resourcegroup.name
  location            = azurerm_resource_group.azure_resourcegroup.location
  allocation_method   = "Static"

  tags = {

    environment = "dev"
  }
}

/* NIC -> Network interface */
resource "azurerm_network_interface" "NIC" {
    name="azurerm_Webapps_NIC"
    location = azurerm_resource_group.azure_resourcegroup.location
    resource_group_name = azurerm_resource_group.azure_resourcegroup.name
    ip_configuration {
      name ="ipconfig_webapps_NIC"
      subnet_id = azurerm_subnet.azurerm_webapps_subnet.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.webapppublicip.id
    }
  
 }