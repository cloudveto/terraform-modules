variable "name" {
  description = "Name of s3 bucket"
}

variable "acl" {
  description = "bucket acl"
  default     = "private"
}

variable "enable_versioning" {
  description = "enable bucket versioning"
  default     = "true"
}
