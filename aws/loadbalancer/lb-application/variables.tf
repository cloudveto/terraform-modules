variable "name" {
  description = "A small description"
}
variable "security_groups" {
  description = "List of security groups"
}
variable "subnets" {
  description = "List of subnets"
}
variable "lb_internal" {
  description = "LB is interfacing or internal"
}
variable "environment" {
  description = "Name of the environment"
}