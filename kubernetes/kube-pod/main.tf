resource "kubernetes_pod" "pod" {
  metadata {
    name      = var.name
    namespace = var.namespace
    labels = {
      app = var.app
    }
  }
  spec {
    container {
      image = var.container_image
      name  = var.container_name
      port {
        container_port = var.container_port
      }
    }
  }
}