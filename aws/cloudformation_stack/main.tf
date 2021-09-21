resource "aws_cloudformation_stack" "stack" {
  name         = var.name
  capabilities = var.capabilities
  iam_role_arn = var.iam_role_arn
  parameters = {
    VPCCidr = var.vpc_cidr
  }
  template_body = data.template_file.template.rendered
}

data "template_file" "template" {
  template = file("templates/${var.template_file}.json.tpl")
  vars = {
    account_id   = var.account_id
    name         = var.name
    environment  = var.environment
    UserPoolId   = var.user_pool_id
    UserPoolName = var.user_pool_name
  }
}