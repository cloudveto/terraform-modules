variable "region" {
  description = "Region of deployment"
}

variable "account_id" {
  description = "aws acccount id"
}
variable "policy" {
  description = "Policy file that has to be attached"
  default = ""
}
variable "encryption_type" {
  description = "Unless specified, we will leverage AWS provided KMS keys"
  default     = "KMS"
}
variable "is_enabled" {
  description = "Specifies whether the key is enabled. Defaults to true."
  default     = "true"
}
variable "enable_key_rotation" {
  description = "Specifies whether key rotation is enabled. Defaults to false."
  default     = "true"
}
variable "deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days"
  default     = "30"
}
variable "key_usage" {
  description = "Specifies the intended use of the key. Defaults to ENCRYPT_DECRYPT, and only symmetric encryption and decryption are supported."
  default     = "ENCRYPT_DECRYPT"
}
variable "kms_policy" {
  description = "kms_policy"
}
