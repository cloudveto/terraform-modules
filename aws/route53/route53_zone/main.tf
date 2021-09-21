resource "aws_route53_zone" "zone" {
  name = var.domain_name
  vpc {
    vpc_id = data.aws_vpc.vpc.id
  }
  tags = {
    Environment = var.vpc_name
  }
}