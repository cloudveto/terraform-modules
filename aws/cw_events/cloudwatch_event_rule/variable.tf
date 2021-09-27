variable "name" {
  description = "name of the rule."
}
variable "schedule_expression" {
  description = "cheduling expression. For example, cron(0 20 * * ? *) or rate(5 minutes)"
}
variable "description" {
  description = "description of the rule."
}