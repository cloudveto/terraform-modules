resource "aws_cognito_identity_provider" "provider" {
  user_pool_id  = var.user_pool_id
  provider_name = var.provider_name
  provider_type = var.provider_type

  provider_details = {
    authorize_scopes = var.authorize_scopes
    client_id        = var.client_id
    client_secret    = var.client_secret
  }

  attribute_mapping = {
    email    = var.email
    username = var.username
  }
}