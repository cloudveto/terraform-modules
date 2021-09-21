resource "aws_security_group_rule" "sgr" {
  count             = length(var.from_port)
  type              = "ingress"
  from_port         = element(var.from_port, count.index)
  to_port           = element(var.to_port, count.index)
  protocol          = var.protocol
  ipv6_cidr_blocks  = var.ipv6_cidr_blocks
  description       = var.description
  security_group_id = var.security_group_id
}