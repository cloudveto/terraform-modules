variable "lambda_alias_name" {
  description = "Name for the alias you are creating."
  type        = "string"
}

variable "lambda_alias_desc" {
  description = " Description of the alias"
  default = "null"
}

variable "lambda_alias_funt_version" {
  description = "Lambda function version for which you are creating the alia."
  type        = "string"
}

variable "lambda_alias_funt_name" {
  description = "The function ARN of the Lambda function for which you want to create an alias."
  type        = "string"
}
