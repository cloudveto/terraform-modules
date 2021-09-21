variable "name" {
  description = "metadata name"
}
#variable "depends" {
#  description = "depends"
#}
variable "ingress_class" {
  description = "annotations alb"
}
variable "namespace" {
  description = "Namespace"
  default     = null
}

variable "path" {
  description = "path of the backend service"
  type        = any
  default     = []
}
variable "ip_address_type" {
  description = "ip address type should be ipv4 | dualstack	"
}

variable "security-groups" {
  description = "security groups"
}
variable "subnets" {
  description = " subnets"
}
variable "certificate-arn" {
  description = "certificate arn"
}

variable "host" {
  description = "Name of the host. Should be something.example.com"
}

variable "depends-on" {
  description = "depends on service"
  default = null
}
variable "scheme" {
  description = "value of scheme is internet facing"
}
variable "target_type" {
  default = "target type is ip "
}