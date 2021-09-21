data "azuread_user" "user" {
  user_principal_name = var.user_email
}