output "cert_arn" {
  value = aws_acm_certificate.acm.arn
}
output "private_key" {
  value = aws_acm_certificate.acm.private_key
}
output "certificate_authority_arn" {
  value = aws_acm_certificate.acm.certificate_authority_arn
}
output "certificate_body" {
  value = aws_acm_certificate.acm.certificate_body
}
output "certificate_chain" {
  value = aws_acm_certificate.acm.certificate_chain
}
output "id" {
  value = aws_acm_certificate.acm.id
}