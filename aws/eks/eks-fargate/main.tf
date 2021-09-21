resource "aws_eks_fargate_profile" "fargate_profile" {
  cluster_name           = var.cluster_name
  fargate_profile_name   = var.fargate_profile_name
  pod_execution_role_arn = var.pod_execution_role_arn
  subnet_ids             = var.subnet_ids
  dynamic "selector" {
    for_each = var.selector
    content {
      namespace = lookup(selector.value,"namespace",[] )
    }
  }
}