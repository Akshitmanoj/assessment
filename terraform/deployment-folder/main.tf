module "terraform-azurerm_windows_virtual_machine" {
    source = "../module-folder"
    for_each            = var.win_vm
    vm_name             = "${each.value["name"]}"
    resource_group_name = var.rg_name
    location            = var.loc
    size                = "${each.value["size"]}"
    admin_username      = var.username
    admin_password      = var.password
    network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

    os_disk {
    caching              = each.value["caching"]
    storage_account_type = each.value["acctype"]
  }

    source_image_reference {
    publisher = each.value["publisher"]
    offer     = each.value["offer"]
    sku       = each.value["sku"]
    version   = each.value["version"]
  }
}

resource "azurerm_resource_group" "rg" {
  source = "../module-folder"
  for_each = var.rg
  rg_name  = "${each.value["name"]}"  
  location = var.loc
}

resource "azurerm_virtual_network" "vnet" {
  source = "../module-folder"
  for_each            = var.virtualnet
  vnet_name           = "${each.value["name"]}" 
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  source = "../module-folder"
  for_each             = var.subnet_here
  subnet_name          = "${each.value["name"]}"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.rg.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "nic" {
  source = "../module-folder"
  for_each            = var.nic_card
  nic_name            = "${each.value["name"]}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
