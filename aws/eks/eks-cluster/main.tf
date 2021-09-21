resource "aws_eks_cluster" "cluster" {
  name                      = var.name
  role_arn                  = var.role_arn
  version                   = var.eks_version
  enabled_cluster_log_types = var.enabled_cluster_log_types
  depends_on                = [var.depends]
  tags                      = var.common_tags

  vpc_config {
      security_group_ids      = var.security_group_ids
      subnet_ids              = var.subnet_ids
      endpoint_private_access = var.endpoint_private_access
      endpoint_public_access  = var.endpoint_public_access
    }

  timeouts {
    create = var.create_timeout
    delete = var.delete_timeout
  }

  dynamic "encryption_config" {
    for_each = var.encryption_config
    content {
      resources = lookup(encryption_config.value, "resources", [])
      dynamic "provider" {
        for_each = lookup(encryption_config.value, "provider", [])
        content {
          key_arn = lookup(provider.value, "key_arn", [])
        }
      }
    }
  }
}

data "aws_eks_cluster_auth" "auth" {
  name = aws_eks_cluster.cluster.id
}