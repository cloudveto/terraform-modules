output "id" {
  value = aws_eks_cluster.cluster.id
}
output "name" {
  value = aws_eks_cluster.cluster.name
}
output "endpoint" {
  value = aws_eks_cluster.cluster.endpoint
}
output "certificate_authority" {
  value = aws_eks_cluster.cluster.certificate_authority
}
output "status" {
  value = aws_eks_cluster.cluster.status
}
output "arn" {
  value = aws_eks_cluster.cluster.arn
}
output "version" {
  value = aws_eks_cluster.cluster.version
}
output "auth_id" {
  value = data.aws_eks_cluster_auth.auth.id
}
output "auth_token" {
  value = data.aws_eks_cluster_auth.auth.token
}