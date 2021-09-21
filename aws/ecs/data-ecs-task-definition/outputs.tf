output "id" {
  value = data.aws_ecs_task_definition.task_definition.id
}
output "family" {
  value = data.aws_ecs_task_definition.task_definition.family
}
output "network_mode" {
  value = data.aws_ecs_task_definition.task_definition.network_mode
}
output "revision" {
  value = data.aws_ecs_task_definition.task_definition.revision
}
output "status" {
  value = data.aws_ecs_task_definition.task_definition.status
}
output "task_role_arn" {
  value = data.aws_ecs_task_definition.task_definition.task_role_arn
}
