resource "aws_subnet" "subnet_public" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.core_vpc.id
  cidr_block        = element(var.subnets_cidrs["public"], count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = merge(
    tomap({"Name"= "${var.environment}-sub-${var.sub_services_names["public"]}-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "public"}),
    var.common_tags
  )
}

resource "aws_subnet" "subnet_private_app" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.core_vpc.id
  cidr_block        = element(var.subnets_cidrs["private_app"], count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = merge( 
    tomap({"Name"= "${var.environment}-sub-${var.sub_services_names["private_app"]}-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "private"}),
    var.common_tags
  )
}

resource "aws_subnet" "subnet_private_data" {
  count             = length(var.availability_zones)
  vpc_id            = aws_vpc.core_vpc.id
  cidr_block        = element(var.subnets_cidrs["private_data"], count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = merge( 
    tomap({"Name"= "${var.environment}-sub-${var.sub_services_names["private_data"]}-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "private"}),
    var.common_tags
  )
}