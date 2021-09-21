output "password" {
  value = jsondecode(aws_secretsmanager_secret_version.secret.secret_string)["password"]
}