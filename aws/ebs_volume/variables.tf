variable "availability_zone" {
  description = "The AZ where the EBS volume will exist."
}
variable "size" {
  description = "The size of the drive in GiBs."
}
variable "kms_key_id" {
  description = " The ARN for the KMS encryption key."
  default     = null
}
variable "encrypted" {
  description = "Encrypted or not"
  type        = bool
  default     = null
}
variable "name" {
  description = "A short Name"
}
variable "environment" {
  description = "Name of the environment"
}
variable "type" {
  description = "The type of EBS volume. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2)."
  default     = "gp2"
}