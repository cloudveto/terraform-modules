variable "name" {
  description = "A short description"
}
variable "storage_account_name" {
  description = "Name of storage account"
}
variable "storage_container_name" {
  description = "Name of storage container"
}
variable "type" {
  description = "Blob storage type. One of Append, Block or Page"
}
variable "blob_source" {
  description = "An absolute path to a file on the local system"
  default = null
}