resource "aws_instance" "ec2" {
  count = length(var.subnet_id)
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  user_data              = data.template_file.user_data.rendered
  subnet_id              = element(var.subnet_id, count.index)
  vpc_security_group_ids = var.vpc_security_group_ids
  iam_instance_profile   = var.iam_instance_profile
  monitoring             = true
  # delete_on_termination  = false

  dynamic "root_block_device" {
    for_each = var.root_block_device
    content {
      delete_on_termination = lookup(root_block_device.value, "delete_on_termination", null)
      encrypted             = lookup(root_block_device.value, "encrypted", null)
      iops                  = lookup(root_block_device.value, "iops", null)
      kms_key_id            = lookup(root_block_device.value, "kms_key_id", null)
      volume_size           = lookup(root_block_device.value, "volume_size", null)
      volume_type           = lookup(root_block_device.value, "volume_type", null)
      throughput            = lookup(root_block_device.value, "throughput", null)
      tags                  = merge(var.tags,{Name = var.name },)
    }
  }
  dynamic "ebs_block_device" {
    for_each = var.ebs_block_device
    content {
      delete_on_termination = lookup(ebs_block_device.value, "delete_on_termination", null)
      device_name           = ebs_block_device.value.device_name
      encrypted             = lookup(ebs_block_device.value, "encrypted", null)
      iops                  = lookup(ebs_block_device.value, "iops", null)
      kms_key_id            = lookup(ebs_block_device.value, "kms_key_id", null)
      snapshot_id           = lookup(ebs_block_device.value, "snapshot_id", null)
      volume_size           = lookup(ebs_block_device.value, "volume_size", null)
      volume_type           = lookup(ebs_block_device.value, "volume_type", null)
      throughput            = lookup(ebs_block_device.value, "throughput", null)
      tags                  = merge(var.tags,{Name = var.name},)
    }
  }
  tags = merge(
  tomap({ "Name" = var.name,"Environment" = var.environment,"Application" = var.application  })
  )
}

data "template_file" "user_data" {
  template = file("templates/${var.user_data}.tpl")
}