variable "name" {
  description = "Name of application"
}
variable "common_tags" {
  type = map(string)
}
variable "environment" {
  description = "Name of the environment"
}
