resource "aws_lb_listener" "lb_listner" {
  load_balancer_arn = var.alb_arn
  port              = var.alb_lb_port
  protocol          = var.protocol
  ssl_policy        = var.ssl_policy
  certificate_arn   = var.cert_arn

  default_action {
    target_group_arn = var.target_group_arn
    type             = "forward"
  }
}