resource "aws_default_route_table" "public" {
  default_route_table_id = aws_vpc.core_vpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.core_igw.id
  }

  tags = merge(
    tomap({"Name"= "${var.environment}-rtb-${var.sub_services_names["public"]}-all","VPC"= aws_vpc.core_vpc.id,"Classification"= "public" }),
    var.common_tags
  )
}

resource "aws_route_table" "private_app" {
  count  = length(var.availability_zones)
  vpc_id = aws_vpc.core_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = element(aws_nat_gateway.core_nat.*.id, count.index)
  }
  tags = merge(
    tomap({"Name"= "${var.environment}-rtb-${var.sub_services_names["private_app"]}-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "private"}),
    var.common_tags
  )
}

resource "aws_route_table" "private_data" {
  count  = length(var.availability_zones)
  vpc_id = aws_vpc.core_vpc.id

  tags = merge(
    tomap({"Name"= "${var.environment}-rtb-${var.sub_services_names["private_data"]}-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "private"}),
    var.common_tags
  )
}

resource "aws_route_table_association" "private" {
  count          = length(var.availability_zones)
  subnet_id      = element(aws_subnet.subnet_private_app.*.id, count.index)
  route_table_id = element(aws_route_table.private_app.*.id, count.index)
}

resource "aws_route_table_association" "data" {
  count          = length(var.availability_zones)
  subnet_id      = element(aws_subnet.subnet_private_data.*.id, count.index)
  route_table_id = element(aws_route_table.private_data.*.id, count.index)
}
resource "aws_route_table_association" "public" {
  count          = length(var.availability_zones)
  subnet_id      = element(aws_subnet.subnet_public.*.id, count.index)
  route_table_id = element(aws_default_route_table.public.*.id, count.index)
}