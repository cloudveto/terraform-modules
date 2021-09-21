output "sqs_endpoint" {
  value = aws_sqs_queue.sqs.arn
}