resource "aws_launch_configuration" "lc" {
  name                        = var.name
  image_id                    = var.image_id
  instance_type               = var.instance_type
  iam_instance_profile        = var.iam_instance_profile
  key_name                    = var.key_name
  security_groups             = var.security_groups
  user_data                   = data.template_file.user_data.rendered
#  ebs_optimized               = var.ebs_optimized
  root_block_device {
    volume_type           = "gp2"
    volume_size           = "50"
    delete_on_termination = "true"
#    encrypted             = true
#    kms_key_id            = var.kms_key_arn
  }
  lifecycle {
    create_before_destroy = true
  }

}

data "template_file" "user_data" {
  template = file("templates/${var.user_data}.tpl")
}