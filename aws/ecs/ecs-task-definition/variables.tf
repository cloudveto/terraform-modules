variable "name" {
  description = "Name of application"
}
variable "account_id" {
  description = "AWS Account ID"
}
variable "common_tags" {
  type = map(string)
}
variable "environment" {
  description = "Name of the environment"
}
variable "port" {
  description = "Container port"
}
variable "family" {
  description = "family of task definition"
}
variable "fargate_cpu" {
  description = "Fargate CPU size"
}
variable "fargate_memory" {
  description = "Fargate Momory"
}
variable "execution_role_arn" {
  description = "Execution role arn"
}
variable "region" {
  description = "region"
}
variable "task-definition-file-name" {
  description = "task definition templete file"
}
variable "task_role_arn" {
  description = "role arn"
  default     = null
}
variable "tag" {
  description = "tag"
  default     = null
}