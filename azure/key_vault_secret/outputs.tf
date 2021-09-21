output "name" {
  value = azurerm_key_vault_secret.secret.name
}
output "id" {
  value = azurerm_key_vault_secret.secret.id
}
output "key_vault_id" {
  value = azurerm_key_vault_secret.secret.key_vault_id
}
output "value" {
  value = azurerm_key_vault_secret.secret.value
}