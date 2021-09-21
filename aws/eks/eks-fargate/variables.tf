variable "cluster_name" {
  description = "name of the cluster"
}
variable "fargate_profile_name" {
  description = "fargate profile name"
}
variable "pod_execution_role_arn" {
  description = "pod execution role arn"
}
variable "subnet_ids" {
  description = "list of subnet ids"
  type = list(string)
}
variable "selector" {
  description = "selector"
}