output "function_arn" {
  value = aws_lambda_event_source_mapping.kinesis.function_arn
}
output "function_name" {
  value = aws_lambda_event_source_mapping.kinesis.function_name
}