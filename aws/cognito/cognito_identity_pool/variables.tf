variable "identity_pool_name" {
  description = "The Cognito Identity Pool name."
}
variable "allow_unauthenticated_identities" {
  description = "Whether the identity pool supports unauthenticated logins or not."
}
variable "cognito_identity_providers" {
  type = any
  default = []
  description = "An array of Amazon Cognito Identity user pools and their client IDs."
}
variable "saml_provider_arns" {
  default = null
  description = "An array of Amazon Resource Names (ARNs) of the SAML provider for your identity."
}
variable "openid_connect_provider_arns" {
  default = null
  description = "Set of OpendID Connect provider ARNs."
}