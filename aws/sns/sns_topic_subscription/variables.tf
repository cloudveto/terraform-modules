variable "name" {
  description = "The name of the SNS topic to create"
  type        = string
  default     = null
}
variable "arn" {
  description = "arn of sns_topic"
}
variable "protocal" {
  description = "type of protocal"
}
variable "endpoint" {
  description = "endpoint of sqs"
}