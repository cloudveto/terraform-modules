variable "secret_description" {
  description = "A description of the secret"
}

variable "kms_key_id" {
  description = "Specifies the ARN or alias of the AWS KMS customer master key (CMK) to be used to encrypt the secret values in the versions stored in this secret"
}

variable "name" {
  description = "Specifies the friendly name of the new secret"
}