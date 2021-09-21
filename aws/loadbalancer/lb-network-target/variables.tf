variable "name" {
  description = "Name of the Resources"
}
variable "vpc_id" {
  description = "VPC ID"
}
variable "environment" {
  description = "Name of the Environment"
}
variable "tg_port" {
  description = "Target Group Port Number"
}
variable "tg_health" {
  description = "Target Health Gourp Port Number"
}
variable "target_type" {
  description = "Target Type Instance/IP"
}
variable "protocol" {
  description = "Protocol Type for Target Group"
}
variable "health_check_proto" {
  description = "Health Check Protocol for Target Group"
}