terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

module "azurerm_module_resourcgroup" {
    source = "./modules/resourcegroup"
    resourcegroupname = var.resourcegroupname
    location = var.location
    
  
}

# resource "azurerm_resource_group" "azurerm_rsg" {
#     name= var.resourcegroupname
#     location = var.location
#     tags = local.commonstags
# }
# locals {
#   commonstags ={
#     enviroment ="dev"
#     costcentre ="benz02334"
#   }
# }

/* Call Azure Network */
# module "azurerm_module_virtualnetwork" {
#     source = "./modules/virtualnetwork"
#     resourcegroupname = var.resourcegroupname
#     location = var.location

# }

# /* Call Virtual Machine  */
# module "azurerm_module_linuxvirtualmachine" {
#     source = "./modules/linuxvirtualmachine"
#     linuxmachine = var.linuxmachine
#     resourcegroupname = var.resourcegroupname
#     location = var.location
# }