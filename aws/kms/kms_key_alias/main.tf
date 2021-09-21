resource "aws_kms_key" "kms_key" {
  description             = "KMS for Encryption"
  is_enabled              = var.is_enabled
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = data.template_file.policy.rendered
  tags = {
    Key_Enabled  = var.is_enabled
    Key_Validity = var.deletion_window_in_days
  }
}

resource "aws_kms_alias" "kms_key_alias" {
  name          = "alias/${var.key_alias}"
  target_key_id = aws_kms_key.kms_key.id
}

data "template_file" "policy" {
  template = file("templates/${var.kms_policy}.json.tpl")
  vars = {
    account_id = var.account_id
  }
}