output "winvm_name" {
    value = azurerm_windows_virtual_machine.windows_vm[*].name
}

output "winvm_id" {
    value = azurerm_windows_virtual_machine.windows_vm[*].id
}
