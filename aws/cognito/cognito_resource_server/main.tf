resource "aws_cognito_resource_server" "resource" {
  identifier   = var.identifier
  name         = var.name
  user_pool_id = var.user_pool_id

  scope {
    scope_name        = var.scope_name
    scope_description = var.scope_description
  }

}