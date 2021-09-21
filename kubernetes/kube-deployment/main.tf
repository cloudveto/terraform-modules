resource "kubernetes_deployment" "deployment" {
  metadata {
    name      = var.name
    namespace = var.namespace
    labels = {
      app = var.app
    }
  }
  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = var.app
      }
    }
    template {
      metadata {
        labels = {
          app = var.app
        }
      }
      spec {
        dns_policy           = var.dns_policy
        service_account_name = var.service_account_name
        container {
          name              = var.container_name
          image             = var.container_image
          image_pull_policy = var.image_pull_policy
          port {
            container_port = var.container_port
            protocol       = var.protocol
          }
        }
      }
    }
  }
}