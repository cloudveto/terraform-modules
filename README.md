# [cloudveto.com](https://cloudveto.com)
# terraform-modules
## Example terraform scripts are available in "examples" folder
## Below are examples how to use terraform as reusable modules

# To create AWS VPC
```
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
```
# To create AWS S3 Bucket
```
module "s3_bucket" {
source = "github.com/cloudveto/terraform-modules/aws/s3"
name   = var.name
}
```
# From the examples, make necessary changes to terraform.tfvars file
```
account_id         = "123456789012"
region             = "us-west-2"
environment        = "cloudveto-dev"
```
