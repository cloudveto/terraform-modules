output "id" {
  value = tls_private_key.key.id
}
output "private_key_pem" {
  value = tls_private_key.key.private_key_pem
}
output "public_key_pem" {
  value = tls_private_key.key.public_key_pem
}