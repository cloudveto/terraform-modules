variable "name" {
  description = "The name of the user group."
}
variable "user_pool_id" {
  description = "The user pool ID."
}
variable "description" {
  description = "The description of the user group."
}
variable "precedence" {
  description = "The precedence of the user group."
  default = null
}
variable "role_arn" {
  description = "The ARN of the IAM role to be associated with the user group."
}
