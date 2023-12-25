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

module "azure_rsgdevgroup" {
    source = "./modules/resourcegroup"  
    location = var.location
    resourcename = var.resourcename
  
}

# module "azure_Dev" {
#     source = "./dev"  
#     location = var.location
#     resourcename = var.resourcename
    
# }
