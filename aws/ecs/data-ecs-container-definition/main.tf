data "aws_ecs_container_definition" "container_definition" {
  task_definition = var.task_definition_id
  container_name  = var.container_name
}