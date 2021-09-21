output "postgresql_db_parameter_group_id" {
  description = "The db parameter group id"
  value       = aws_db_parameter_group.postgresql.id
}
output "postgresql_db_parameter_group_name" {
  description = "The db parameter group name"
  value       = aws_db_parameter_group.postgresql.name
}
