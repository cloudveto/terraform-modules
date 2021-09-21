resource "azurerm_key_vault" "vault" {
  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_template_deployment = var.enabled_for_template_deployment
  tenant_id                       = var.tenant_id
  soft_delete_retention_days      = var.soft_delete_retention_days
  purge_protection_enabled        = var.purge_protection_enabled
  sku_name                        = var.sku_name

  dynamic "access_policy" {
    for_each = var.access_policy
    content {
      object_id               = lookup(access_policy.value, "object_id", [])
      tenant_id               = lookup(access_policy.value, "tenant_id", [])
      certificate_permissions = lookup(access_policy.value, "certificate_permissions", [])
      key_permissions         = lookup(access_policy.value, "key_permissions", [])
      secret_permissions      = lookup(access_policy.value, "secret_permissions", [])
      storage_permissions     = lookup(access_policy.value, "object_storage_permissionsid", [])
    }
  }
  dynamic "network_acls" {
    for_each = var.network_acls
    content {
      bypass                     = lookup(network_acls.value, "bypass", [])
      default_action             = lookup(network_acls.value, "default_action", [])
      ip_rules                   = lookup(network_acls.value, "ip_rules", [])
      virtual_network_subnet_ids = lookup(network_acls.value, "virtual_network_subnet_ids", [])
    }
  }

}