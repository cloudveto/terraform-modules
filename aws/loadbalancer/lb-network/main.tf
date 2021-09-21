resource "aws_lb" "lb" {
  name                             = var.name
  subnets                          = var.subnets
  load_balancer_type               = "network"
  enable_cross_zone_load_balancing = true
  internal                         = var.lb_internal
  tags = {
    Environment = var.environment
  }
}