########################### Role ###########################
data "template_file" "role_template" {
  template = file("templates/${var.trust_relationship}.json.tpl")
      vars = {
          account_id  =   var.account_id
      }
}
resource "aws_iam_role" "role" {
  name                  =   var.name
  description           =   "${var.name} custom role"
  assume_role_policy    =   data.template_file.role_template.rendered
  force_detach_policies =   "true"
}

##################### Custom Policy Creation ###########################
data "template_file" "custom_policy_template" {
  template = file("templates/${var.custom_policy}.json.tpl")
  vars = {
    account_id = var.account_id
  }
}
resource "aws_iam_policy" "policy" {
  name        = var.name
  description = "${var.name} role custom policy"
  policy      = data.template_file.custom_policy_template.rendered
}
################## Custom Policy Attachment ###################
resource "aws_iam_role_policy_attachment" "policy_attach" {
  role       = aws_iam_role.role.name
  policy_arn = aws_iam_policy.policy.arn
}

################## Instance Profile ###################
resource "aws_iam_instance_profile" "instance_profile" {
  name = var.name
  role = aws_iam_role.role.name
}