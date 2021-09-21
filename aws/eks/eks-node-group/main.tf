resource "aws_eks_node_group" "node_grp" {
  cluster_name         = var.cluster_name
  node_group_name      = var.node_group_name
  node_role_arn        = var.node_role_arn
  subnet_ids           = var.subnet_ids
  ami_type             = var.ami_type
  disk_size            = var.disk_size
  instance_types       = var.instance_types
  version              = var.eks_version
  force_update_version = var.force_update_version
  tags                 = var.tags
  depends_on           = [var.depends]

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }
  remote_access {
    ec2_ssh_key               = var.ec2_ssh_key
    source_security_group_ids = var.source_security_group_ids
  }
#  launch_template {
#    id      = var.launch_template_id
#    version = var.launch_template_version
#  }
  labels = {
    nodePool = var.labels
  }
}