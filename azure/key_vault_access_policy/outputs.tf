output "key_vault_id" {
  value = azurerm_key_vault_access_policy.key_vault_access_policy.key_vault_id
}
output "id" {
  value = azurerm_key_vault_access_policy.key_vault_access_policy.id
}
output "key_permissions" {
  value = azurerm_key_vault_access_policy.key_vault_access_policy.key_permissions
}