resource "aws_lambda_permission" "lambda_permission" {
  statement_id  = var.statement_id
  action        = var.action
  function_name = var.lambda_function_name
  principal     = var.principal
  source_arn    = var.source_arn
#  qualifier     = "${var.qualifier}"
}
