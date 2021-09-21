variable "name" {
	description = "Name of the managed disk"
}
variable "location" {
	description = "Location"
}
variable "resource_group_name" {
	description = "Name of resource group"
}
variable "storage_account_type" {
	description = "Storage account type"
}
variable "create_option" {
	description = "Create option"
}
variable "source_resource_id" {
	description = "Source resource id"
	default = null
}
variable "disk_size_gb" {
	description = "disk size in gb"
}
variable "environment" {
	description = "environment eg: dev/test/prod"
}
variable "tags" {
	  description = "A mapping of tags to assign to the resource"
	  type        = map(string)
	  default     = {}
}