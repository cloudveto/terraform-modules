# DHCP opton set 'external'
resource "aws_vpc_dhcp_options" "dhcp_external" {
  domain_name          = var.dhcp_domain_names["external"]
  domain_name_servers  = var.dhcp_name_servers["external"]

  tags = merge(
    tomap({"Name"= "${var.environment}-dhcp","VPC"= aws_vpc.core_vpc.tags.Name,"Classification"= "public"}),
    var.common_tags
  )
}

# Assign/Associate/link DHCP to VPC
resource "aws_vpc_dhcp_options_association" "dns_resolver_external" {
  vpc_id          = aws_vpc.core_vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.dhcp_external.id
}