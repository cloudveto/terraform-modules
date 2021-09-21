########### Randon String #########
resource "random_string" "random" {
  length  = 4
  upper   = false
  number  = false
  special = false
}
########### Auctions ###############
resource "aws_launch_template" "lt" {
  name_prefix            = "${var.name}-${random_string.random.result}"
  image_id               = var.image_id
  instance_type          = var.instance_type
  user_data              = base64encode(data.template_file.user_data.rendered)
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids

  block_device_mappings {
    device_name = var.device_name

    ebs {
      volume_size = var.volume_size
      volume_type = var.volume_type
    }
  }
  iam_instance_profile {
    arn = var.iam_instance_profile_arn
  }
  monitoring {
    enabled = true
  }
  lifecycle {
    create_before_destroy = true
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = var.instance_name
    }
  }
}
data "template_file" "user_data" {
  template = file("templates/${var.user_data}.tpl")
}
