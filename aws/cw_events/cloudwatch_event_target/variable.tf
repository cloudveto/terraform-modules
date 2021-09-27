variable "arn" {
  description = " Amazon Resource Name (ARN) associated of the target."
}
variable "rule" {
  description = "name of the rule you want to add targets to"
}
variable "target_id" {
  description = "unique target assignment ID. If missing, will generate a random, unique id."
}