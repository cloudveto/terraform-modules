variable "name" {
  description = "cognito pool name"
}
variable "mfa_configuration" {
  default     = "OFF"
  description = "mfa config on or off"
}
variable "auto_verified_attributes" {
  description = "he attributes to be auto-verified. Possible values: email, phone_number."
  default     = null
}
variable "username_attributes" {
  description = "Possible values: phone_number, email, or preferred_username"
}

variable "sms_authentication_message" {
  default     = null
  description = "representing the SMS authentication message"
}
variable "software_token_mfa_configuration" {
  default     = []
  type        = any
  description = "Multi-Factor Authentication (MFA) configuration for the User Pool"
}
variable "sms_configuration" {
  type        = any
  default     = []
  description = "Configuration block for Short Message Service (SMS) settings."
}
variable "lambda_config" {
  default     = []
  type        = any
  description = "Lambda Configuration"
}
variable "password_policy" {
  default     = []
  type        = any
  description = "password policy"
}
variable "user_pool_add_ons" {
  default     = []
  type        = any
  description = "user pool add"
}
variable "username_configuration" {
  description = "case sensitive is true or false"
  default     = []
  type        = any
}
variable "verification_message_template" {
  default     = []
  type        = any
  description = "verification message template"
}
variable "schema" {
  default     = []
  type        = any
  description = "schema"
}
variable "allow_admin_create_user_config" {
  description = "Set to True if only the administrator is allowed to create user profiles. Set to False if users can sign themselves up via an app."
  default     = []
  type        = any
}
variable "email_configuration" {
  default     = []
  type        = any
  description = "email config"
}