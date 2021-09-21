output "kms_key_alias_id" {
  value = data.aws_kms_key.kms.id
}
output "kms_key_alias_arn" {
  value = data.aws_kms_key.kms.arn
}
output "kms_key_alias_key_id" {
  value = data.aws_kms_key.kms.key_id
}