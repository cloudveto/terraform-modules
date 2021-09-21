output "name" {
  value = azurerm_key_vault_key.key_vault_key.name
}
output "id" {
  value = azurerm_key_vault_key.key_vault_key.id
}
output "key_opts" {
  value = azurerm_key_vault_key.key_vault_key.key_opts
}
output "key_vault_id" {
  value = azurerm_key_vault_key.key_vault_key.key_vault_id
}
output "rsa_modulus" {
  value = azurerm_key_vault_key.key_vault_key.n
}
output "rsa_public_exponent" {
  value = azurerm_key_vault_key.key_vault_key.e
}