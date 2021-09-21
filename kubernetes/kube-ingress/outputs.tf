output "id" {
  value = kubernetes_ingress.ingress.id
}
output "metadata" {
  value = kubernetes_ingress.ingress.metadata
}
output "spec" {
  value = kubernetes_ingress.ingress.spec
}
output "lb" {
  value = kubernetes_ingress.ingress.load_balancer_ingress
}