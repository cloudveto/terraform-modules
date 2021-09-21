variable "name" {
  description = "metadata name"
}
variable "app" {
  description = "Name of the application"
}
variable "replicas" {
  description = "number of replicas"
}
variable "container_image" {
  description = "container image"
}
variable "container_name" {
  description = "container name"
}
variable "container_port" {
  description = "container port number"
}
variable "namespace" {
  description = "namespace"
}
variable "dns_policy" {
  description = "value of dns_policy should be Default/ClusterFirst/ClusterFirstWithHostNet/None"
  default = null
}
variable "protocol" {
  description = "protocol value is TCP"
}

variable "service_account_name" {
  description = "service account name to use to run pod"
}
variable "image_pull_policy" {
  description = "value of image pull policy is Always"
}