variable "username" {
  description = "Name of the user with underscore"
}
variable "user_email" {
  description = "User login ID which is EMAIL ID"
}
variable "role_name" {
  description = "Role that should be attached"
}
variable "policy_template_file" {
  description = "Role that should be attached"
}
variable "account_id" {
  description = "Login account id"
}
variable "max_password_age" {
  description = "The number of days that an user password is valid"
  default     = 90
}
variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing."
  default     = 5
}
variable "hard_expiry" {
  type        = string
  default     = false
  description = "Whether users are prevented from setting a new password after their password"
}
variable "minimum_password_length" {
  default     = 12
  description = "Minimum length to require for user passwords."
}