output "filename" {
  value = local_file.kubeconfig.filename
}
output "template" {
  value = data.template_file.kubeconfig.rendered
}
output "content" {
  value = local_file.kubeconfig.content
}