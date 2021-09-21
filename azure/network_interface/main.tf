resource "azurerm_network_interface" "network_interface" {
  name                 = var.name
  location             = var.location
  resource_group_name  = var.resource_group_name
  enable_ip_forwarding = var.enable_ip_forwarding

  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name                          = lookup(ip_configuration.value, "ip_conf_name",[])
      subnet_id                     = lookup(ip_configuration.value, "subnet_id",[])
      private_ip_address_allocation = lookup(ip_configuration.value, "private_ip_address_allocation",[])
    }
  }
}