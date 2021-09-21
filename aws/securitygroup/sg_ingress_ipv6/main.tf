resource "aws_security_group_rule" "sgr" {
  count             = length(var.ports)
  type              = "ingress"
  from_port         = element(var.ports, count.index)
  to_port           = element(var.ports, count.index)
  protocol          = var.protocol
  ipv6_cidr_blocks  = var.ipv6_cidr_blocks
  description       = var.description
  security_group_id = var.security_group_id
}