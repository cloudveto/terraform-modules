resource "aws_lb_target_group" "lb_tg_port" {
  name     = var.name
  port     = var.tg_port
  protocol = var.protocol
  vpc_id   = var.vpc_id
  health_check {
    protocol = var.health_check_proto
    port     = var.tg_health
  }
  target_type = var.target_type
  tags = {
    Name        = "${var.name}-tg-${var.tg_port}"
    Environment = var.environment
  }
}