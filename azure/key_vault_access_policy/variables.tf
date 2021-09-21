variable "key_vault_id" {
  description = "key vault id"
}
variable "tenant_id" {
  description = "tenant id"
}
variable "object_id" {
  description = "object id"
}
variable "key_permissions" {
  description = "key permissions"
  type = list(string)
}
variable "secret_permissions" {
  description = "secret permissions"
  type = list(string)
}
variable "storage_permissions" {
  description = "storage permissions"
  type = list(string)
}
variable "certificate_permissions" {
  description = "certificate permissions"
  type = list(string)
}