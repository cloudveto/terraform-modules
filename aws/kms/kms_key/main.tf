########### To create KMS ###########
resource "aws_kms_key" "kms_key" {
  description             = "Customer Managed KMS key"
  is_enabled              = var.is_enabled
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = data.template_file.template.rendered
  tags = {
    Key_Enabled  = var.is_enabled
    Key_Validity = var.deletion_window_in_days
  }
}

data "template_file" "template" {
  template = file("templates/${var.kms_policy}.json.tpl")
  vars = {
    account_id  = var.account_id
  }
}