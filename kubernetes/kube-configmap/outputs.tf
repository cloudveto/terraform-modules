output "metadata" {
  value = kubernetes_config_map.configmap.metadata
}
output "binarydata" {
  value = kubernetes_config_map.configmap.binary_data
}
output "id" {
  value = kubernetes_config_map.configmap.id
}
output "maproles" {
  value = kubernetes_config_map.configmap.data.mapRoles
}