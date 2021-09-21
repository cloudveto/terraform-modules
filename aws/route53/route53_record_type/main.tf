resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = var.name
  type    = var.type
  records = var.records
  ttl     = "300"
}