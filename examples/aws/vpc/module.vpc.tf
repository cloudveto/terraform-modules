module "vpc" {
  source                  = "github.com/cloudveto/terraform-modules/aws/vpc-two-az"
  region                  = var.region
  account_id              = var.account_id
  vpc_cidr                = var.vpc_cidr
  environment             = var.environment
  subnets_cidrs           = var.subnets_cidrs
  sub_services_names      = var.sub_services_names
  availability_zones      = var.availability_zones
  vpc_name                = var.vpc_name
  vpc_flow_log_group_name = var.vpc_flow_log_group_name
  enable_dns_hostnames    = var.enable_dns_hostnames
  dhcp_domain_names       = var.dhcp_domain_names
  dhcp_name_servers       = var.dhcp_name_servers
  common_tags             = var.common_tags
}