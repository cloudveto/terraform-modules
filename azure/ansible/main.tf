resource "null_resource" "ansible_resource" {
  connection {
    type        = "ssh"
    user        = var.ssh_user
    host        = var.host
    private_key = base64decode(var.private_key)
  }
  provisioner "local-exec" {
    command     = var.command
    interpreter = ["bash", "-c"]
  }
}