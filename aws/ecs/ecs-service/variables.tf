variable "name" {
  description = "Name of application"
}
variable "common_tags" {
  type = map(string)
}
variable "environment" {
  description = "Name of the environment"
}
variable "cluster_id" {
  description = "ARN of an ECS cluster"
}
variable "task_definition_arn" {
  description = "Full ARN of the task definition that you want to run in your service."
}
variable "desired_count" {
  description = "desired count"
}
variable "security_group_id" {
  description = "Security group Id"
}
variable "subnets" {
  description = "subnets"
}
variable "aws_alb" {
  description = "aws_alb"
  default = null
}
variable "ecs_iam_role" {
  description = "ecs_iam_role"
  default     = null
}
variable "assign_public_ip" {
  description = "Assign public ip true/false"
  type        = bool
}
variable "force_new_deployment" {
  description = "Enable to force a new task deployment of the service"
  default     = null
}
variable "platform_version" {
  description = "The platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST"
  default     = null
}
variable "load_balancer" {
  description = "load balancer configuration."
  default     = []
  type        = any
}