output "route53_zone_domain_name" {
  value = data.aws_route53_zone.domain.name
}
output "route53_zone_domain_id" {
  value = data.aws_route53_zone.domain.id
}