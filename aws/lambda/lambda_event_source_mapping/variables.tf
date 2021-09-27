variable "function_name" {
  description = "A unique name for your Lambda Function."
}
variable "event_source_arn" {
  description = "event source arn"
}
variable "starting_position" {
  description = "starting position"
  default = null
}