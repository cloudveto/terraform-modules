resource "aws_cloudwatch_event_target" "cw_event_target" {
  arn       = var.arn
  rule      = var.rule
  target_id = var.target_id
}