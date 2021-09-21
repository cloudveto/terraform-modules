resource "aws_acm_certificate" "acm" {
  domain_name       = var.domain_fqdn
  validation_method = "DNS"
  tags = {
    Name = var.domain_name
  }
}