resource "aws_cloudwatch_log_group" "cwlg" {
  name  = var.name
  retention_in_days = 90
  tags = {
    Environment = var.environment
  }
}