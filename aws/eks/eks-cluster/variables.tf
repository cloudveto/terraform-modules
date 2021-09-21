variable "name" {
  description = "Name of the cluster"
}
variable "role_arn" {
  description = "Role ARN"
}
variable "eks_version" {
  description = "EKS Version"
}
variable "enabled_cluster_log_types" {
  description = "enabled cluster log types: api, audit, authenticator, controllerManager, scheduler"
  type        = list(string)
}
variable "depends" {
  description = "Depends on"
  type        = any
  default     = null
}
variable "common_tags" {
  description = "Tags"
}
variable "security_group_ids" {
  description = "security group ids"
  type        = list(string)
}
variable "subnet_ids" {
  description = "subnet ids"
  type        = list(string)
}
variable "endpoint_private_access" {
  description = "endpoint_private_access"
  type        = bool
}
variable "endpoint_public_access" {
  description = "endpoint public access"
  type        = bool
}
variable "create_timeout" {
  description = "create timeout"
}
variable "delete_timeout" {
  default = "delete timeout"
}
variable "encryption_config" {
  description = "encryption config"
  type        = any
  default     = []
}