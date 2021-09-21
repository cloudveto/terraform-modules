variable "name" {
  description = "Name of the app"
}
variable "namespace" {
  description = "Name of Namespace"
}
variable "configmap_file" {
  description = "Config map file name"
}
variable "default_rolearn" {
  description = "default role arn"
}
variable "custom_rolearn" {
  description = "custom role arn"
}