variable "name" {
  description = "The name of the Network Interface. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  description = "The name of the Resource Group in which to create the Network Interface."
}
variable "enable_ip_forwarding" {
  default     = false
  description = "Should IP Forwarding be enabled? Defaults to false."
}
#variable "subnet_id" {
#  description = "The ID of the Subnet where this Network Interface should be located in."
#}
variable "location" {
  description = "The location where the Network Interface should exist."
}
#variable "private_ip_address_allocation" {
#  default     = "Dynamic"
#  description = "The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
#}
variable "ip_configuration" {
  description = "ip configuration"
  type        = any
  default     = []
}