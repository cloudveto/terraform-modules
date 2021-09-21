output "identity_pool_id" {
  value = aws_cognito_identity_pool_roles_attachment.roles_attachment.identity_pool_id
}
output "id" {
  value = aws_cognito_identity_pool_roles_attachment.roles_attachment.id
}
output "ambiguous_role_resolution" {
  value = aws_cognito_identity_pool_roles_attachment.roles_attachment.role_mapping.ambiguous_role_resolution
}
output "identity_provider" {
  value = aws_cognito_identity_pool_roles_attachment.roles_attachment.role_mapping.identity_provider
}
output "mapping_rule" {
  value = aws_cognito_identity_pool_roles_attachment.roles_attachment.role_mapping.mapping_rule
}
output "type" {
  value = aws_cognito_identity_pool_roles_attachment.roles_attachment.role_mapping.type
}