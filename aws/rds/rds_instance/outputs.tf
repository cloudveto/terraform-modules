output "rds_db_instance_id" {
  description = "The db subnet group name"
  value       = aws_db_instance.rds.id
}

output "rds_db_instance_arn" {
  description = "The db subnet group name"
  value       = aws_db_instance.rds.arn
}

output "rds_db_instance_address" {
  description = "The db subnet group name"
  value       = aws_db_instance.rds.address
}

output "rds_db_instance_endpoint" {
  description = "The db subnet group name"
  value       = aws_db_instance.rds.endpoint
}