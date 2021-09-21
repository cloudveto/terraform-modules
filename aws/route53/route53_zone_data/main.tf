data "aws_route53_zone" "domain" {
  name         = var.name
  private_zone = var.private_zone
}