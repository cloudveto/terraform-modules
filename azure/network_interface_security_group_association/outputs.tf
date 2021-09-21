output "nsg_association_id" {
  value = azurerm_network_interface_security_group_association.nsg_association.id
}
output "nsg_association_nic_id" {
  value = azurerm_network_interface_security_group_association.nsg_association.network_interface_id
}
output "nsg_association_nic_group_id" {
  value = azurerm_network_interface_security_group_association.nsg_association.network_security_group_id
}