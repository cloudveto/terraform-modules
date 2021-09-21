output "route53_record_name" {
  value = aws_route53_record.record.name
}
output "route53_record_id" {
  value = aws_route53_record.record.id
}
output "route53_record_fqdn" {
  value = aws_route53_record.record.fqdn
}