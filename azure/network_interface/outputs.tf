output "network_interface_name" {
  value = azurerm_network_interface.network_interface.name
}
output "network_interface_id" {
  value = azurerm_network_interface.network_interface.id
}
output "network_interface_resource_group_name" {
  value = azurerm_network_interface.network_interface.resource_group_name
}
output "network_interface_private_ip_address" {
  value = azurerm_network_interface.network_interface.private_ip_address
}