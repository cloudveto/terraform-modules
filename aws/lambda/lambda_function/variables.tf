#variable "s3_bucket_name" {
#  description = " The S3 bucket location containing the function's deployment package"
#}
#variable "s3_bucket_key" {
#  description = "The S3 key of an object containing the function's deployment package."
#}
variable "function_name" {
  description = "A unique name for your Lambda Function."
}
variable "lambda_role" {
  description = "IAM role attached to the Lambda Function"
}
variable "handler" {
  description = "The function entrypoint in your code."
}
variable "lambda_runtime" {
  description = "The identifier of the function's runtime. e.g Java/python"
}
variable "lambda_timeout" {
  description = "The amount of time your Lambda Function has to run in seconds."
}
variable "lambda_memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
}
variable "lambda_publish" {
  description = "Whether to publish creation/change as new Lambda Function Version"
}
variable "lambda_description" {
  description = "Description of what your Lambda Function does."
}
variable "subnet_ids" {
  type        = list(string)
  description = "A list of subnet IDs associated with the Lambda function."
}
variable "security_group_ids" {
  type        = list(string)
  description = "A list of security group IDs associated with the Lambda function."
}
variable "environment" {
  description = "environment"
}
variable "lambda_path" {
  description = "lambda path"
}
variable "filename" {
  description = "file name"
}
variable "reserved_concurrent_executions" {
  description = "Amount of reserved concurrent executions for this lambda function."
  default = null
}