output "log_stream_name" {
  value = aws_cloudwatch_log_stream.cw_log_stream.name
}
output "log_stream_id" {
  value = aws_cloudwatch_log_stream.cw_log_stream.id
}
output "log_stream_arn" {
  value = aws_cloudwatch_log_stream.cw_log_stream.arn
}