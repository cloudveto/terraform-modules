resource "aws_cognito_identity_pool" "identity_pool" {
  identity_pool_name               = var.identity_pool_name
  allow_unauthenticated_identities = var.allow_unauthenticated_identities

  dynamic "cognito_identity_providers" {
    for_each = var.cognito_identity_providers
    content {
      client_id               = lookup(cognito_identity_providers.value,"client_id", [] )
      provider_name           = lookup(cognito_identity_providers.value,"provider_name", [] )
      server_side_token_check = lookup(cognito_identity_providers.value,"server_side_token_check", [] )
    }
  }
  saml_provider_arns           = var.saml_provider_arns
  openid_connect_provider_arns = var.openid_connect_provider_arns
}