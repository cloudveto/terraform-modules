resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone
  size              = var.size
  kms_key_id        = var.kms_key_id
  encrypted         = var.encrypted
  type              = var.type
  tags = {
    Name        = var.name
    Environment = var.environment
  }
}