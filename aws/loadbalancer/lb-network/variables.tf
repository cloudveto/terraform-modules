variable "name" {
  description = "name of the resources"
}
variable "lb_internal" {
  description = "Load balancer type"
}
variable "environment" {
  description = "name of the environment"
}
variable "search_pattern" {
  description = "Search pattern "
  default     = "*sub"
}
variable "vpc_id" {
  description = "VPC ID"
}
variable "subnets" {
  description = "Subnets"
}