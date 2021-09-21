variable "name" {}
variable "image_id" {}
variable "instance_type" {}
variable "iam_instance_profile" {}
variable "key_name" {
  default = null
}
variable "security_groups" {}
variable "user_data" {}
