variable "identifier" {
  description = "The name of the identifier"
}
variable "cluster_identifier" {
  type        = string
  description = "The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
}
variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window"
  default     = true
}
variable "instance_class" {
  description = "The name of the instance_class"
}
variable "tags" {
  description = "A map of tags to assign to the instance."
}
variable "engine" {
description   = " The name of the database engine to be used for the DocDB instance"
}