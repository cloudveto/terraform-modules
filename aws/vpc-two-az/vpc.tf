resource "aws_vpc" "core_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(
    tomap({"Name"= "${var.environment}-${var.vpc_name}","Classification"= "private"}),
    var.common_tags,
  )
}

resource "aws_cloudwatch_log_group" "vpc_flowlogs_log_group" {
  name              = "${var.environment}-${var.vpc_flow_log_group_name}"
  retention_in_days = 90
}

resource "aws_flow_log" "vpc_flow_logs" {
  log_destination = aws_cloudwatch_log_group.vpc_flowlogs_log_group.arn
  iam_role_arn    = "arn:aws:iam::${var.account_id}:role/vpc_flowlog_role"
  vpc_id          = aws_vpc.core_vpc.id
  traffic_type    = "ALL"
}

resource "aws_default_network_acl" "nacl" {
  default_network_acl_id = aws_vpc.core_vpc.default_network_acl_id
  subnet_ids = concat(
    aws_subnet.subnet_public.*.id,
    aws_subnet.subnet_private_app.*.id,
    aws_subnet.subnet_private_data.*.id
  )

  egress {
    protocol   = "all"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = "all"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = merge(
    tomap({"Name"= "${var.environment}-nacl","Classification"= "private","VPC"= aws_vpc.core_vpc.id}),
    var.common_tags,
  )
}