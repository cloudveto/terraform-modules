output "id" {
  value = aws_eks_node_group.node_grp.id
}
output "status" {
  value = aws_eks_node_group.node_grp.status
}
output "arn" {
  value = aws_eks_node_group.node_grp.arn
}
output "node_group_name" {
  value = aws_eks_node_group.node_grp.node_group_name
}
output "node_role_arn" {
  value = aws_eks_node_group.node_grp.node_role_arn
}
output "labels" {
  value = aws_eks_node_group.node_grp.labels
}