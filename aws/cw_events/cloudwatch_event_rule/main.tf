resource "aws_cloudwatch_event_rule" "cw_event_rule" {
  name                = var.name
  schedule_expression = var.schedule_expression
  description         = var.description
}