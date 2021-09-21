resource "aws_docdb_subnet_group" "docdb" {
  name        = var.name
  subnet_ids  = var.subnet_ids
  description = var.description
}