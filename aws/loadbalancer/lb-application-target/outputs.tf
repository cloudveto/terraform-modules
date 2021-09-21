output "alb_target_group_arn" {
  value = aws_lb_target_group.lb_tg_port.arn
}
output "alb_target_group_id" {
  value = aws_lb_target_group.lb_tg_port.id
}
output "alb_target_group_arn_suffix" {
  value = aws_lb_target_group.lb_tg_port.arn_suffix
}
output "alb_target_group_arn_name" {
  value = aws_lb_target_group.lb_tg_port.name
}

