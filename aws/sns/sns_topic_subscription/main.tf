resource "aws_sns_topic_subscription" "sns_topic_subscription" {
  topic_arn = var.arn
  protocol  = var.protocal
  endpoint  = var.endpoint
}
