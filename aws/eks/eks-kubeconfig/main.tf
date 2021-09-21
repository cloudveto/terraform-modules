data "template_file" "kubeconfig" {
  template = file("templates/${var.kubeconfig}.yaml.tpl")

  vars = {
    name         = var.name
    clustername  = var.clustername
    endpoint     = var.endpoint
    cluster_auth = var.cluster_auth
    region       = var.region
    role_arn     = var.role_arn
  }
}

resource "local_file" "kubeconfig" {
  content  = data.template_file.kubeconfig.rendered
  filename = pathexpand("~/.kube/config")
}