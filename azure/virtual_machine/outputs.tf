output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}
output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}
output "vm_admin_username" {
  value = azurerm_linux_virtual_machine.vm.admin_username
}
output "vm_computer_name" {
  value = azurerm_linux_virtual_machine.vm.computer_name
}
output "vm_private_ip_addresses" {
  value = azurerm_linux_virtual_machine.vm.private_ip_addresses
}