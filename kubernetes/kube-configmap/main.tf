resource "kubernetes_config_map" "configmap" {
  metadata {
    name      = var.name
    namespace = var.namespace
  }
  data = {
    mapRoles = data.template_file.configmap.rendered
  }
}

data "template_file" "configmap" {
  template = file("templates/${var.configmap_file}.yaml.tpl")
  vars = {
    default_rolearn = var.default_rolearn
    custom_rolearn  = var.custom_rolearn
  }
}