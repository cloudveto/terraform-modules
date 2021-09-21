output "rds_subnet_group_id" {
  description = "The db subnet group id"
  value       = aws_db_subnet_group.rds.id
}
output "rds_subnet_group_name" {
  description = "The db subnet group name"
  value       = aws_db_subnet_group.rds.name
}