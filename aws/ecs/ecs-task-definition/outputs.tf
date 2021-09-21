output "aws_ecs_task_definition" {
  value = aws_ecs_task_definition.ecs_taskdefinition.arn
}
output "id" {
  value = aws_ecs_task_definition.ecs_taskdefinition.id
}