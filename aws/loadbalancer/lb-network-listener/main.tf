resource "aws_lb_listener" "nt_lb_listener" {
  load_balancer_arn = var.nlb_arn
  port              = var.nt_lb_port
  protocol          = var.protocol
  default_action {
    target_group_arn = var.target_group_arn
    type             = "forward"
  }
}