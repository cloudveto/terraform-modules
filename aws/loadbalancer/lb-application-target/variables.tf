variable "name" {
  description = "A small description"
}
variable "environment" {
  description = "Name of th eenvironment"
}
variable "vpc_id" {
  description = "VPC ID"
}
variable "tg_port" {
  description = "LB target port"
}
variable "protocol" {
  description = "LB target protocol"
}
variable "health_path" {
  description = "Health check path"
}
variable "health_port" {
  description = "Health check port"
}
variable "health_protocol" {
  description = "Health check protocol"
}
variable "target_type" {
  description = " target_type "
}
variable "matcher" {
  description = "The HTTP codes to use when checking for a successful response from a target. You can specify multiple values (for example, 200,202) or a range of values (for example, 200-299)"
  default     = null
}