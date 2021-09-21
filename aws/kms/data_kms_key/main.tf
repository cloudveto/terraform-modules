data "aws_kms_key" "kms" {
  key_id = "alias/${var.kms_key_alias}"
}