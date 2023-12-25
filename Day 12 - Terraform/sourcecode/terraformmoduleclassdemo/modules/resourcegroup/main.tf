resource "azurerm_resource_group" "azurerm_rsg" {
    name= var.resourcegroupname
    location = var.location
    tags = local.commaninfo
    
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


