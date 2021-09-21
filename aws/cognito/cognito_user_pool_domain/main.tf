resource "aws_cognito_user_pool_domain" "domain" {
  domain          = var.domain
  certificate_arn = var.certificate_arn
  user_pool_id    = var.user_pool_id
}