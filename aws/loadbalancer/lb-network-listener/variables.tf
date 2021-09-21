variable "target_group_arn" {
  description = "Target Group Arn"
}
variable "protocol" {
  description = "Type of Protocol TCP/UDP for listener"
}
variable "nlb_arn" {
  description = "Network Load Balanacer Arn"
}
variable "nt_lb_port" {
  description = "Listener port number"
}