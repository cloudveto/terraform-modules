data "aws_ecr_repository" "service" {
  name = var.ecr_repository_name
}