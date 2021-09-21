output "id" {
  value = tls_self_signed_cert.cert.id
}
output "private_key_pem" {
  value = tls_self_signed_cert.cert.private_key_pem
}
output "cert_pem" {
  value = tls_self_signed_cert.cert.cert_pem
}