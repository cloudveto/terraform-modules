variable "alb_arn" {
  description = "LB ARN"
}
variable "alb_lb_port" {
  description = "LB port"
}
variable "protocol" {
  description = "LB Port"
}
variable "ssl_policy" {
  description = "SSL Policy"
  default = null
}
variable "cert_arn" {
  description = "Certificate ARN"
  default = null
}
variable "target_group_arn" {
  description = "LB target group ARN"
}
