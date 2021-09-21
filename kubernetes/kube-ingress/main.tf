resource "kubernetes_ingress" "ingress" {
  metadata {
    name      = var.name
    namespace = var.namespace
    annotations = {
      "kubernetes.io/ingress.class"                       = var.ingress_class
      "alb.ingress.kubernetes.io/scheme"                  = var.scheme
      "alb.ingress.kubernetes.io/target-type"             = var.target_type
    }
  }
  spec {
    rule {
      host = var.host
      http {
        dynamic "path" {
          for_each = var.path
          content {
            path = lookup(path.value, "path", [])
            dynamic "backend" {
              for_each = lookup(path.value, "backend", [])
              content {
                service_name = lookup(backend.value, "service_name", [])
                service_port = lookup(backend.value, "service_port", [])
              }
            }
          }
        }
      }
    }
  }
  depends_on = [var.depends-on]
}