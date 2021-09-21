account_id         = "123456789"
region             = "us-west-2"
environment        = "cloudveto-dev"
vpc_name           = "vpc"
vpc_cidr           = "10.2.0.0/22"
availability_zones = ["us-west-2a", "us-west-2b"]
subnets_cidrs = {
  private_app  = ["10.2.0.0/24", "10.2.1.0/24"]
  private_data = ["10.2.3.0/25", "10.2.3.128/25"]
  public       = ["10.2.2.0/25", "10.2.2.128/25"]
}
sub_services_names = {
  public       = "pub"
  private_app  = "pri"
  private_data = "data"
}
vpc_flow_log_group_name = "flow_logs"
enable_dns_hostnames    = true
dhcp_domain_names = {
  external = "cloudveto.com"
}
dhcp_name_servers = {
  external = ["AmazonProvidedDNS"]
}
common_tags = {
  TechnicalOwner = "cloudveto_ops"
  Application    = "cloudveto.com"
  Environment    = "cloudveto-dev"
  Tier           = "cloudveto"
  BusinessUnit   = "cloudveto.com"
}
