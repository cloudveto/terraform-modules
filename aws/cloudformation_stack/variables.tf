variable "name" {
  description = "Name of th application"
}
variable "account_id" {
  description = "Name of the account"
  default     = null
}
variable "capabilities" {
  description = "A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, or CAPABILITY_AUTO_EXPAND."
  default     = null
}
variable "iam_role_arn" {
  description = "IAM Role ARN"
  default     = null
}
variable "environment" {
  description = "Name of the Environment"
  default     = null
}
variable "template_file" {
  description = "Cloud formation template"
}
variable "vpc_cidr" {
  description = "VPC CIDR Block"
  default     = null
}
variable "user_pool_name" {
  description = "Cognito user pool name"
}
variable "user_pool_id" {
  description = "Cognito user pool id"
}