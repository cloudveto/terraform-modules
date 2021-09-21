data "azurerm_subnet" "subnet" {
  name                 = var.name
  virtual_network_name = var.virtual_network_name
  resource_group_name  = var.resource_group_name
}