data "aws_ecs_task_definition" "task_definition" {
  task_definition = var.task_definition_family
}
