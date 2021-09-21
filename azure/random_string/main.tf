resource "random_string" "random" {
  length  = var.length
  upper   = var.upper
  number  = var.number
  special = var.special
}