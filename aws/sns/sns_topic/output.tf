output "topic_arn" {
  description = "ARN of SNS topic"
  value = aws_sns_topic.sns_topic.arn
}
