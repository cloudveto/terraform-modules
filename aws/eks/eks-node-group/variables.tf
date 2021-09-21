variable "depends" {
  description = "list of depends_on"
  type        = any
  default     = null
}
variable "eks_version" {
  description = "version"
}
variable "instance_types" {
  description = "instance_types"
}
variable "disk_size" {
  description = "disk size"
}
variable "ami_type" {
  description = "type of ami"
}
variable "subnet_ids" {
  description = "list of subnet ids "
  type        = list(string)
}
variable "node_role_arn" {
  description = "node role arn"
}
variable "node_group_name" {
  description = "name of the node group"
}
variable "cluster_name" {
  description = "name of the kubernetes cluster"
}
variable "force_update_version" {
  description = "Force version update if existing pods are unable to be drained due to a pod disruption budget issue"
  type        = bool
}
variable "labels" {
  description = "labels of the node group"
}
variable "tags" {
  description = "common tags"
  type        = map(string)
}
variable "desired_size" {
  description = "desired size"
}
variable "max_size" {
  description = "max size"
}
variable "min_size" {
  description = "min size"
}
variable "ec2_ssh_key" {
  description = "ec2 ssh key name"
}
variable "source_security_group_ids" {
  description = "source security group ids"
}
variable "capacity_type" {
  description = "Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT."
  default = null
}
#variable "launch_template_id" {
#  description = "launch template id"
#}
#variable "launch_template_version" {
#  description = "launch template version"
#}
