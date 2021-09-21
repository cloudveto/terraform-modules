resource "kubernetes_namespace" "namespace" {
  metadata {
    annotations = {
      name = var.name
    }
    labels = {
      app = var.app
    }

    name = var.name
  }
}