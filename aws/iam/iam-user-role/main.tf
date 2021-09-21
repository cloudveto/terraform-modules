########################### IAM Service Roles ###########################
data "template_file" "template" {
  template = file("templates/${var.assumned_role_policy_template}.json.tpl")
  vars = {
    account_id = var.account_id
  }
}
resource "aws_iam_role" "role" {
  name                  = var.name
  description           = "${var.name} custom Role"
  assume_role_policy    = data.template_file.template.rendered
  force_detach_policies = "true"
}

##################### Custom Policy Creation ###########################
data "template_file" "policy_template" {
  template = file("templates/${var.policy_template_file}.json.tpl")
#  vars = {
#    account_id = "${var.account_id}"
#  }
}
resource "aws_iam_policy" "role_policy" {
  name        = "${var.name}_role_policy"
  description = "${var.name}  custom policy"
  policy      = data.template_file.policy_template.rendered
}
################## Custom Policy Attachment ###################
resource "aws_iam_role_policy_attachment" "attachment" {
  role       = aws_iam_role.role.name
  policy_arn = aws_iam_policy.role_policy.arn
}