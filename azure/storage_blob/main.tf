resource "azurerm_storage_blob" "storage_blob" {
  name                   = var.name
  storage_account_name   = var.storage_account_name
  storage_container_name = var.storage_container_name
  type                   = var.type
  source                 = var.blob_source
}