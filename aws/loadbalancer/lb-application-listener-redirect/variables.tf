variable "alb_arn" {
  description = "LB ARN"
}
variable "protocol" {
  description = "LB Port"
}
variable "port" {
  description = "Lister port"
}
variable "redirect_port" {
  description = "Redirect Port 443"
}
variable "redirect_protocol" {
  description = "Redirect Protocol HTTPS"
}
variable "redirect_status_code" {
  description = "Redirect status code HTTP_301"
}