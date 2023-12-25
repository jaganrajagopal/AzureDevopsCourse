module "azure_rsgdevgroup" {
    source = "./modules/resourcegroup"  
    location = var.location
    resourcename = var.resourcename
    
}