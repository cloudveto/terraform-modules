#data "external" "hash" {
#  program = [coalesce(var.hash_script, "${path.module}/hash.sh"), var.source_path]
#}

# Build and push the Docker image whenever the hash changes
#     command     = "${coalesce(var.push_script, "${path.module}/push.sh")} ${var.source_path} ${var.repository_url} ${var.tag}"
resource "null_resource" "push" {
#  triggers = {
#    hash = lookup(data.external.hash.result, "hash")
#  }

  provisioner "local-exec" {
    command     = "${coalesce(var.push_script, "${path.module}/${var.script_name}.sh")} ${var.source_path} ${var.repository_url} ${var.tag} ${var.account_id} ${var.role_name} ${var.region} ${var.ecs_cluster_name} ${var.ecs_service_name} ${var.ecs_task_definition}"
    interpreter = ["bash", "-c"]
  }
}