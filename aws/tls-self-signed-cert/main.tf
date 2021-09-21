resource "tls_self_signed_cert" "cert" {
  key_algorithm         = var.key_algorithm
  private_key_pem       = var.private_key_pem
  validity_period_hours = var.validity_period_hours

  allowed_uses = [
    "key_encipherment",
    "digital_signature",
    "server_auth",
  ]

  dns_names = ["*.${var.region}.compute.internal"]

  subject  {
    common_name  = "*.${var.region}.compute.internal"
    organization = var.organization
    province     = var.province
    country      = var.country
  }
}