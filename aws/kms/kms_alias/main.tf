resource "aws_kms_alias" "kms_key_alias" {
  name          = "alias/${var.key_alias}"
  target_key_id = var.kms_key_id
}