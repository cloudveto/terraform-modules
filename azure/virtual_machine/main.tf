resource "azurerm_linux_virtual_machine" "vm" {
  name                          = var.computer_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  network_interface_ids         = var.network_interface_ids
  size                          = var.vm_size
#  delete_os_disk_on_termination = true

  dynamic "source_image_reference" {
    for_each = var.source_image_reference
    content {
      publisher = lookup(source_image_reference.value, "source_image_reference_publisher", [])
      offer     = lookup(source_image_reference.value, "source_image_reference_offer", [])
      sku       = lookup(source_image_reference.value, "source_image_reference_sku", [])
      version   = lookup(source_image_reference.value, "source_image_reference_version", [])
    }
  }

  dynamic "os_disk" {
    for_each = var.os_disk
    content {
      name                 = lookup(os_disk.value, "os_disk_name", [])
      caching              = lookup(os_disk.value, "os_disk_caching", [])
      storage_account_type = lookup(os_disk.value, "os_disk_storage_account_type", [])
    }
  }

  computer_name                   = var.computer_name
  admin_username                  = var.vm_username
  admin_password                  = var.vm_password
  disable_password_authentication = var.disable_password_authentication

  dynamic "admin_ssh_key" {
    for_each = var.admin_ssh_key
    content {
      public_key = lookup(admin_ssh_key.value, "public_key", [])
      username   = lookup(admin_ssh_key.value, "username", [])
    }
  }
  tags = {
    name        = var.computer_name
    environment = var.environment
  }
}