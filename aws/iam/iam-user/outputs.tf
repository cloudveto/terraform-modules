output "credentials" {
  value = formatlist("${aws_iam_user.user.name} : %s", aws_iam_user_login_profile.profile.encrypted_password)
}
output "expire_password" {
  value = aws_iam_account_password_policy.password_policy.expire_passwords
}
output "max_password_age" {
  value = aws_iam_account_password_policy.password_policy.max_password_age
}