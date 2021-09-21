resource "aws_docdb_cluster_parameter_group" "docdb" {
  family = var.family
  name   = var.name

  parameter {
    name  = "tls"
    value = "disabled"
  }
}