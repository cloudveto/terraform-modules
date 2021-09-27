variable "ami" {
  description = "The name of the ami"
}
variable "instance_type" {
  description = "The name of the instance_type"
}
variable "user_data" {
  description = "The name of the user_data"
}
variable "subnet_id" {
  description = "The name of the subnet_id"
  type        = list(string)
}
variable "vpc_security_group_ids" {
  description = "The name of the vpc_security_group_ids"
}
variable "root_block_device" {
  description = "Root EBS block devices to attach to the instance"
  type        = list(map(string))
  default     = []
}
variable "name" {
  description = "name of the instance"
}
variable "environment" {
  description = "Environment name"
}
variable "application" {
  description = "application name that ec2 has. Eg: SAP, Hana etc."
}
variable "iam_instance_profile" {
  description = "Name of iam_instance_profile "
}
variable "key_name" {
  description = "SSH Key Name"
  default     = ""
}
variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance"
  type        = list(map(string))
  default     = []
}
variable "tags" {
  default     = {}
  description = "Resource tags"
  type        = map(string)
}