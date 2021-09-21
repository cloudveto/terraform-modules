variable "name" {
  description = " The name of the application client."
}
variable "user_pool_id" {
  description = " The user pool the client belongs to."
}
variable "generate_secret" {
  description = "Should an application secret be generated."
  default     = null
}
variable "explicit_auth_flows" {
  description = "List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH)."
  default     = null
}
variable "analytics_configuration" {
  description = "The Amazon Pinpoint analytics configuration for collecting metrics for this user pool."
  type        = any
  default     = []
}
variable "allowed_oauth_flows" {
  description = "list of allowed OAuth flows (code, implicit, client_credentials)"
  default     = null

}
variable "oauth_flows_user_pool_client" {
  description = "Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools"
  default     = null

}
variable "allowed_oauth_scopes" {
  description = "List of allowed OAuth scopes"
  default     = null

}
variable "prevent_user_existence_errors" {
  description = "Choose which errors and responses are returned by Cognito APIs during authentication"
  default     = null

}
variable "refresh_token_validity" {
  description = "The time limit in days refresh tokens are valid for."
  default     = null

}