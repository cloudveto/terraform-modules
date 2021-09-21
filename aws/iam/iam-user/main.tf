resource "aws_iam_user" "user" {
  name          = var.user_email
  force_destroy = true
}

data "template_file" "policy_template" {
  template = file("templates/${var.policy_template_file}.json.tpl")
  vars = {
    role_name  = var.role_name
    user_email = var.user_email
    account_id = var.account_id
  }
}

resource "aws_iam_policy" "policy" {
  name        = "iam_${var.username}_${var.role_name}_role_policy"
  description = "IAM Policy ${var.username} ${var.role_name}"
  policy      = data.template_file.policy_template.rendered
}

resource "aws_iam_user_policy_attachment" "policy_attach" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.policy.arn
}

resource "aws_iam_user_login_profile" "profile" {
  user                    = aws_iam_user.user.name
  pgp_key                 = "keybase:cloudveto"
  password_reset_required = true
  password_length         = 12
}

resource "aws_iam_account_password_policy" "password_policy" {
  minimum_password_length        = var.minimum_password_length
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true
  allow_users_to_change_password = true
  max_password_age               = var.max_password_age
  password_reuse_prevention      = var.password_reuse_prevention
  hard_expiry                    = var.hard_expiry
}