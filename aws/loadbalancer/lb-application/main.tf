resource "aws_lb" "alb" {
  name            = "${var.name}-alb"
  security_groups = var.security_groups
  subnets         = var.subnets
  internal        = var.lb_internal
  tags = {
    Name     = var.name
    Environment = var.environment
  }
}

