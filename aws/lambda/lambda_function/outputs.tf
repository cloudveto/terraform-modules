output "lambda_version" {
  value = aws_lambda_function.lambda_function.version
}
output "lambda_arn" {
  value = aws_lambda_function.lambda_function.arn
}
output "lambda_function_name" {
  value = aws_lambda_function.lambda_function.function_name
}
output "lambda_file_name" {
  value = aws_lambda_function.lambda_function.filename
}