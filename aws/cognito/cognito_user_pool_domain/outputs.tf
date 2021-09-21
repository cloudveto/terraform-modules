output "domain" {
  value = aws_cognito_user_pool_domain.domain.domain
}
output "certificate_arn" {
  value = aws_cognito_user_pool_domain.domain.certificate_arn
}
output "user_pool_id" {
  value = aws_cognito_user_pool_domain.domain.user_pool_id
}