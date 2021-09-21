variable "zone_id" {
  description = "Zone ID"
}
variable "name" {
  description = "Name"
}
variable "type" {
  description = "Record type"
}
variable "alias_name" {
  description = "DNS Name"
}
variable "alias_zone_id" {
  description = "Zone ID"
  default = null
}