output "id" {
  value = kubernetes_pod.pod.id
}
output "metadata" {
  value = kubernetes_pod.pod.metadata
}
output "spec" {
  value = kubernetes_pod.pod.spec
}