variable "ami" {
  description = "The name of the ami"
}
variable "instance_type" {
  description = "The name of the instance_type"
}
variable "application" {
  description = "The name of the application that ec2 is hosting. Eg: apache, tomcat, nginx, nodejs, java, vpn, mysql etc "
}
variable "user_data" {
  description = "The name of the user_data"
}
variable "subnet_id" {
  description = "The name of the subnet_id"
  type = list(string)
}
variable "vpc_security_group_ids" {
  description = "The name of the vpc_security_group_ids"
}
variable "kms_key_id" {
  description = "kms key id"
  default = ""
}
variable "name" {
  description = "name of the instance"
}
variable "environment" {
  description = "Environment name"
}
variable "iam_instance_profile" {
  description = "Name of iam_instance_profile "
}
variable "key_name" {
  description = "SSH Key Name"
  default = ""
}