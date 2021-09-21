variable "identity_pool_id" {
  description = "An identity pool ID in the format REGION:GUID."
}
variable "identity_provider" {
  description = "A string identifying the identity provider, for example, graph.facebook.com or cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id."
}
variable "ambiguous_role_resolution" {
  description = "Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type. Required if you specify Token or Rules as the Type."
}
variable "type" {
  description = "The role mapping type."
}
variable "claim" {
  description = "The claim name that must be present in the token, for example, isAdmin or paid."
}
variable "match_type" {
  description = "The match condition that specifies how closely the claim value in the IdP token must match Value."
}
variable "role_arn" {
  description = "The role ARN."
}
variable "value" {
  description = "A brief string that the claim must match, for example, paid or yes."
}