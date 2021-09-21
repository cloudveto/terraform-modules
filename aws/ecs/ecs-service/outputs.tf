output "aws_ecs_service" {
  value = aws_ecs_service.ecs_service.id
}
output "aws_ecs_service_name" {
  value = aws_ecs_service.ecs_service.name
}

output "aws_ecs_revision" {
  value = aws_ecs_service.ecs_service.task_definition
}