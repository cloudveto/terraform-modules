resource "aws_iam_instance_profile" "iam_instance_profile" {
  name = var.name
  role = var.role
}