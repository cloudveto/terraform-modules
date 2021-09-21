resource "aws_db_parameter_group" "postgresql" {
  name        = var.name
  family      = var.family
}
