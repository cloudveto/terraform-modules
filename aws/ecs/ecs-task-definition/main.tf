################ ECS Task Definitions ###############
resource "aws_ecs_task_definition" "ecs_taskdefinition" {
  family                   = var.family
  container_definitions    = data.template_file.taskdefinition_template.rendered
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.fargate_cpu
  memory                   = var.fargate_memory
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn
}

########################### IAM Service Roles ###########################
data "template_file" "taskdefinition_template" {
  template = file("files/${var.task-definition-file-name}.json.tpl")
  vars = {
    account_id        = var.account_id
    name              = var.name
    port              = var.port
    region            = var.region
    environment       = var.environment
    task_role_arn     = var.task_role_arn
    tag               = var.tag
  }
}