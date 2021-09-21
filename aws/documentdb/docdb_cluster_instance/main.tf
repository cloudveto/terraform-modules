resource "aws_docdb_cluster_instance" "docdb" {
  identifier         = var.identifier
  cluster_identifier = var.cluster_identifier
  apply_immediately  = var.apply_immediately
  instance_class     = var.instance_class
  tags               = var.tags
  engine             = var.engine
}