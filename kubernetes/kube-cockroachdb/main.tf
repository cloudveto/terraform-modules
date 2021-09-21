resource "kubernetes_stateful_set" "cockroachdb_statefulset" {
  metadata {
    name = var.name
  }
  spec {
    service_name = var.service_name
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
        host_network = var.host_network
        dns_policy   = var.dns_policy
        affinity {
          pod_anti_affinity {
            preferred_during_scheduling_ignored_during_execution {
              weight = var.weight
              pod_affinity_term {
                label_selector {
                  match_expressions {
                    key      = var.key
                    operator = var.operator
                    values   = var.values
                  }
                }
                topology_key = var.topology_key
              }
            }
          }
        }
        container {
          name              = var.name
          image             = var.image
          image_pull_policy = var.image_pull_policy
                    resources {
                      requests {
                        cpu    = var.cpu_requests
                        memory = var.memory_requests
                      }
                      limits {
                        cpu    = var.cpu_limits
                        memory = var.memory_limits
                      }
                    }
          dynamic "port" {
            for_each = var.port
            content {
              container_port = lookup(port.value, "container_port", [])
            }
          }
                    liveness_probe {
                      http_get {
                        path = var.path
                        port = var.liveness_port
                      }
                    }
                    volume_mount {
                      mount_path = var.mouth_path
                      name = var.volume_name
                    }
                    command = []

        }
        termination_grace_period_seconds = var.termination
      }
    }
    pod_management_policy = var.pod_management_policy
    update_strategy {
      type = var.update_strategy_type
    }
    volume_claim_template {
      metadata {
        name = var.volume_name
      }
      spec {
        access_modes       = var.access_modes
        storage_class_name = var.storage_class_name
        resources {
          requests = {
            storage = var.resources_storage
          }
        }
      }
    }
  }
}