output "id" {
  value = aws_cognito_identity_provider.provider.id
}
output "provider_name" {
  value = aws_cognito_identity_provider.provider.provider_name
}
output "provider_type" {
  value = aws_cognito_identity_provider.provider.provider_type
}
output "provisioner" {
  value = aws_cognito_identity_provider.provider.provisioner
}
output "authorize_scopes" {
  value = aws_cognito_identity_provider.provider.provider_details.authorize_scopes
}
output "client_id" {
  value = aws_cognito_identity_provider.provider.provider_details.client_id
}
output "client_secret" {
  value = aws_cognito_identity_provider.provider.provider_details.client_secret
}