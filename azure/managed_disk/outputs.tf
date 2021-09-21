output "managed_disk_name" {
  value = azurerm_managed_disk.managed_disk.name
}
output "managed_disk_location" {
  value = azurerm_managed_disk.managed_disk.location
}
output "managed_disk_size" {
  value = azurerm_managed_disk.managed_disk.disk_size_gb
}
output "managed_disk_id" {
  value = azurerm_managed_disk.managed_disk.id
}
output "managed_disk_resource_group_name" {
  value = azurerm_managed_disk.managed_disk.resource_group_name
}
output "managed_disk_storage_account_id" {
  value = azurerm_managed_disk.managed_disk.storage_account_id
}