variable "username" {
  description = "User name"
}
variable "email" {
  description = "An email"
}
variable "client_secret" {
  description = "client secret"
}
variable "client_id" {
  description = "client id"
}
variable "authorize_scopes" {
  description = "An email"
}
variable "provider_type" {
  description = "The provider type. See AWS API for valid values. Valid Values: SAML | Facebook | Google | LoginWithAmazon | SignInWithApple | OIDC"
}
variable "provider_name" {
  description = "The user pool id"
}
variable "user_pool_id" {
  description = "The user pool id"
}