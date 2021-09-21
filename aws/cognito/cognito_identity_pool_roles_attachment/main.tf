resource "aws_cognito_identity_pool_roles_attachment" "roles_attachment" {
  identity_pool_id = var.identity_pool_id

  role_mapping {
    identity_provider         = var.identity_provider
    ambiguous_role_resolution = var.ambiguous_role_resolution
    type                      = var.type

    mapping_rule {
      claim      = var.claim
      match_type = var.match_type
      role_arn   = var.role_arn
      value      = var.value
    }
  }

  roles = {
    "authenticated" = var.role_arn
  }
}