resource "azurerm_linux_virtual_machine" "webapps_vm" {
    name= var.linuxmachine
    location = var.location
    resource_group_name = var.resourcegroupname
    network_interface_ids = [
         azurerm_network_interface.NIC.id, ]
    size =  var.instancetype   //"Standard_B1s"te
    
    //public_ip_address= azurerm_public_ip.webapppublicip.ip_address
   
    os_disk {
      caching ="ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    admin_username = "jagan"
    admin_password = "Password@16793"    
    disable_password_authentication = false
    source_image_reference {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
    

}
