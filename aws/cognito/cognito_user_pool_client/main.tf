resource "aws_cognito_user_pool_client" "client" {
  name                                 = var.name
  user_pool_id                         = var.user_pool_id
  generate_secret                      = var.generate_secret
  explicit_auth_flows                  = var.explicit_auth_flows
  allowed_oauth_flows                  = var.allowed_oauth_flows
  allowed_oauth_flows_user_pool_client = var.oauth_flows_user_pool_client
  allowed_oauth_scopes                 = var.allowed_oauth_scopes
  prevent_user_existence_errors        = var.prevent_user_existence_errors
  refresh_token_validity               = var.refresh_token_validity

  dynamic "analytics_configuration" {
    for_each = var.analytics_configuration
    content {
      application_id   = lookup(analytics_configuration.value, "application_id", [])
      external_id      = lookup(analytics_configuration.value, "external_id", [])
      role_arn         = lookup(analytics_configuration.value, "role_arn", [])
      user_data_shared = lookup(analytics_configuration.value, "user_data_shared", [])
    }
  }
}