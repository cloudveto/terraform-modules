output "postgresql_subnet_group_id" {
  description = "The db subnet group id"
  value       = aws_db_subnet_group.postgresql.id
}
output "postgresql_subnet_group_name" {
  description = "The db subnet group name"
  value       = aws_db_subnet_group.postgresql.name
}