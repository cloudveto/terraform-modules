resource "aws_db_subnet_group" "rds" {
  name        = var.name
  description = var.description
  subnet_ids  = var.subnet_ids
}
