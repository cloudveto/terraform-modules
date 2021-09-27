resource "aws_lambda_function" "lambda_function" {
  #  s3_bucket     = var.s3_bucket_name
  #  s3_key        = var.s3_bucket_key
  function_name                  = var.function_name
  role                           = var.lambda_role
  handler                        = var.handler
  runtime                        = var.lambda_runtime
  timeout                        = var.lambda_timeout
  memory_size                    = var.lambda_memory_size
  description                    = var.lambda_description
  publish                        = var.lambda_publish
  reserved_concurrent_executions = var.reserved_concurrent_executions
  filename                       = "${var.filename}.zip"
  source_code_hash               = data.archive_file.lambda_archive.output_base64sha256

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  environment {
    variables = {
      environment = var.environment
    }
  }
}

data "archive_file" "lambda_archive" {
  type        = "zip"
  source_dir  = var.lambda_path
  output_path = "${var.filename}.zip"
}