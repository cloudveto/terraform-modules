variable "access_policy" {
  description = "access policy"
  type        = any
  default     = []
}
variable "network_acls" {
  description = "network acls"
  type        = any
  default     = []
}
variable "name" {
  description = "A short description"
}
variable "location" {
  description = "Location"
}
variable "resource_group_name" {
  description = "resource group name"
}
variable "enabled_for_disk_encryption" {
  description = "enabled for disk encryption"
}
variable "tenant_id" {
  description = "tenant id"
}
variable "soft_delete_retention_days" {
  description = "soft delete retention days. eg 7"
}
variable "purge_protection_enabled" {
  description = "purge protection enabled"
  type = bool
}
variable "enabled_for_deployment" {
  description = "enabled for deployment"
  type = bool
}
variable "enabled_for_template_deployment" {
  description = "enabled for template deployment"
  type = bool
}
variable "sku_name" {
  description = "sku name. Standard or Premium"
}