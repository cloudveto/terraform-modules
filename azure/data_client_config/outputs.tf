output "id" {
  value = data.azurerm_client_config.client_config.id
}
output "tenant_id" {
  value = data.azurerm_client_config.client_config.tenant_id
}
output "client_id" {
  value = data.azurerm_client_config.client_config.client_id
}
output "subscription_id" {
  value = data.azurerm_client_config.client_config.subscription_id
}
output "object_id" {
  value = data.azurerm_client_config.client_config.object_id
}