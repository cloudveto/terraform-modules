output "nsr_id" {
  value = azurerm_network_security_rule.network_security_rule.id
}
output "nsr_group_name" {
  value = azurerm_network_security_rule.network_security_rule.network_security_group_name
}