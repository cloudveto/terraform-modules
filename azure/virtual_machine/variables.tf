variable "name" {
  description = "A short description"
}
variable "computer_name" {
  description = "Name of the VM"
}
variable "environment" {
  description = "environment details"
}
variable "location" {
  description = "Location of VM"
}
variable "resource_group_name" {
  description = "Name of the resource group"
}
variable "network_interface_ids" {
  description = "NIC id"
}
variable "vm_size" {
  description = "VM Size"
}
variable "os_disk" {
  description = "OS Disk in GB"
  type        = any
  default     = []
}
variable "source_image_reference" {
  description = "Source Image"
  type        = any
  default     = []
}
variable "vm_username" {
  description = "Admin user name"
}
variable "vm_password" {
  description = "Admin Password"
}
variable "disable_password_authentication" {
  description = "Disable Password Authentication"
}
variable "admin_ssh_key" {
  description = "Source Image"
  type        = any
  default     = []
}
#variable "delete_os_disk_on_termination" {
#  description = "delete os disk on termination"
#}