resource "aws_db_parameter_group" "rds" {
  name        = var.name
  family      = var.family

#  parameter {
#    name  = "character_set_server"
#    value = "utf8"
#  }
#
#  parameter {
#    name  = "character_set_client"
#    value = "utf8"
#  }
}
