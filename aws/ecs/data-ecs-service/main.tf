data "aws_ecs_service" "ecs_service" {
  service_name = var.service_name
  cluster_arn  = var.cluster_arn
}