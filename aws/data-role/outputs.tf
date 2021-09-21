output "iam_role_arn" {
  description = "ARN of IAM role"
  value       = data.aws_iam_role.role.arn
}