variable "name" {
  description = "network security rule name"
}
variable "priority" {
  description = "nsg priority"
}
variable "direction" {
  description = "nsg direction"
}
variable "access" {
  description = "nsgrule access"
}
variable "protocol" {
  description = "nsg rule protocol"
}
variable "source_port_range" {
  description = "nsg rule source_port_range"
}
variable "destination_port_range" {
  description = "nsg rule destination_port_range"
}
variable "source_address_prefix" {
  description = "nsg rule source_address_prefix"
}
variable "destination_address_prefix" {
  description = "nsg rule destination_address_prefix"
}
variable "resource_group_name" {
  description = "nsg rule resource_group_name"
}
variable "network_security_group_name" {
  description = "nsg rule network_security_group_name"
}