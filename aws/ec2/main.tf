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

  root_block_device {
    volume_type           = "gp2"
    volume_size           = "50"
    delete_on_termination = "true"
    encrypted             = true
    kms_key_id            = var.kms_key_id
  }

  tags = merge(
    tomap({ "Name" = var.name, "Environment" = var.environment, "Application" = var. application})
  )
}

data "template_file" "user_data" {
  template = file("templates/${var.user_data}.tpl")
}