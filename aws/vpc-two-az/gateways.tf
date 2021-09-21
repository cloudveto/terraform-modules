resource "aws_internet_gateway" "core_igw" {
  vpc_id = aws_vpc.core_vpc.id

  tags = merge(
    tomap({"Name"= "${var.environment}-igw-all","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "public"}),
    var.common_tags
  )
}

resource "aws_eip" "nat_eip" {
  count = length(var.availability_zones)
  vpc   = true
  depends_on = [aws_internet_gateway.core_igw]

  tags = merge(
    tomap({"Name"= "${var.environment}-eip-nat-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "public"}),
    var.common_tags
  )
}
resource "aws_nat_gateway" "core_nat" {
  count         = length(var.availability_zones)
  allocation_id = aws_eip.nat_eip.*.id[count.index]
  subnet_id     = aws_subnet.subnet_public.*.id[count.index]
  depends_on    = [aws_internet_gateway.core_igw]

  tags = merge(
    tomap({"Name"= "${var.environment}-nat-az${count.index + 1}","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "private"}),
    var.common_tags
  )
}