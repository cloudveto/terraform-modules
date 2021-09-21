data "aws_ecs_cluster" "cluster" {
  cluster_name = var.cluster_name
}