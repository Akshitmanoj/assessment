win_vm = {

    APP01 = {
    vm_name             = APP-01
    resource_group_name = "Test_RG"
    location            = "Central India"
    size                = "Standard_F2"
    network_interface_ids = [
    azurerm_network_interface.nic.id,]
    
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    }

    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
    }
    }

    WEB01 = {
    vm_name             = WEB-01
    resource_group_name = "Test_RG"
    location            = "Central India"
    size                = "Standard_F2"
    network_interface_ids = [
    azurerm_network_interface.nic.id,]
    
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    }

    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"

    }
    }

    DB01 = {

    vm_name             = DB-01
    resource_group_name = "Test_RG"
    location            = "Central India"
    size                = "Standard_F2"
    network_interface_ids = [
    azurerm_network_interface.nic.id,]
    
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    }

    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"


    }
    }
}

rg = {
    RG01 = {
        name = "Test_RG"   
    }
}

virtualnet = {
    VNET01 = {
        name = "Test_VNET"
    }
}

subnet_here = {
    SUBNET01 = {
        name = "Test_Subnet"
    }

}

nic_card = {

    nic01 = {
        name = "nic1"
    }
    nice02 = {
        name = "nic2"
    }
    nic03 = {
        name = "nic3"
    }
}