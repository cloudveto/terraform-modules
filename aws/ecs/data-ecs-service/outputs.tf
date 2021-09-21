output "id" {
  value = data.aws_ecs_service.ecs_service.id
}
output "arn" {
  value = data.aws_ecs_service.ecs_service.arn
}
output "desired_count" {
  value = data.aws_ecs_service.ecs_service.desired_count
}
output "launch_type" {
  value = data.aws_ecs_service.ecs_service.launch_type
}
output "scheduling_strategy" {
  value = data.aws_ecs_service.ecs_service.scheduling_strategy
}
output "task_definition" {
  value = data.aws_ecs_service.ecs_service.task_definition
}

output "revision" {
  value = data.aws_ecs_service.ecs_service.task_definition
}

output "service_name" {
  value = data.aws_ecs_service.ecs_service.service_name
}