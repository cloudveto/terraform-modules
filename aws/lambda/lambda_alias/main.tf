resource "aws_lambda_alias" "lambda_function" {
  name             = var.lambda_alias_name
  description      = var.lambda_alias_desc
  function_version = var.lambda_alias_funt_version
  function_name    = var.lambda_alias_funt_name
}
