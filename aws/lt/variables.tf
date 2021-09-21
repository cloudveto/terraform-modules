variable "name" {
  description = "Name"
}
variable "image_id" {
  description = "Image id"
}
variable "instance_type" {
  description = "Instance type"
}
variable "key_name" {
  description = "SSH key name"
}
variable "vpc_security_group_ids" {
  description = "Security group"
}
variable "account_id" {
  description = "aws account id"
}
variable "iam_instance_profile_arn" {
  default = "instance profile role arn"
}
variable "instance_name" {
  description = "Ec2 name"
}
variable "user_data" {
  description = "User data"
}
variable "volume_type" {
  description = "Type of volume ebs, gp2 etc"
}
variable "volume_size" {
  description = "volume size"
}
variable "device_name" {
  description = "device name"
}