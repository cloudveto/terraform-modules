variable "name" {
  description = "kubeconfig name"
}
variable "clustername" {
  description = "cluster name"
}
variable "endpoint" {
  description = "endpoint of cluster"
}
variable "cluster_auth" {
  description = "aws eks cluster certificate authority"
}
variable "kubeconfig" {
  description = "kubeconfig template file"
}
variable "region" {
  description = "aws region name"
}
variable "role_arn" {
  description = "role arn"
}