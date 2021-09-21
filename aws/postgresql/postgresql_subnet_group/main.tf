resource "aws_db_subnet_group" "postgresql" {
  name        = var.name
  description = var.description
  subnet_ids  = var.subnet_ids
}
