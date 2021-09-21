########### Common ############
variable "name" {
  description = "EG: bzinga-dev or bzinga-qa or bzinga-uat"
}
variable "environment" {
  description = "Name of the environment"
}
variable "common_tags" {
  type = map(string)
}

variable "image_tag_mutability" {
  default = "MUTABLE"
}