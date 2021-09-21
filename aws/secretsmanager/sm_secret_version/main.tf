resource "aws_secretsmanager_secret_version" "secret" {
  secret_id     = var.secret_id
  secret_string = <<EOF
{
  "password": "${random_string.random.result}"
}
EOF
}
resource "random_string" "random" {
  length  = 32
  upper   = true
  number  = true
  special = false
}