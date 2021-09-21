resource "aws_security_group" "sec_grp" {
  vpc_id                 = var.vpc_id
  description            = var.description
  revoke_rules_on_delete = true
  name                   = var.name
  tags = {
    Name = var.name
  }
}