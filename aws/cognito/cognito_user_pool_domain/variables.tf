variable "domain" {
  description = " The domain string."
}
variable "certificate_arn" {
  description = "The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain."
}
variable "user_pool_id" {
  description = "The user pool ID."
}