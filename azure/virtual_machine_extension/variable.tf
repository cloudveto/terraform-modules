variable "name" {
  description = "vm name"
}
variable "virtual_machine_id" {
  description = "vm id"
}
variable "publisher" {
  description = "vm publisher extension"
  default     = "Microsoft.Azure.Extensions"
}
variable "type" {
  description = "vm type extension"
  default     = "CustomScript"
}
variable "type_handler_version" {
  description = "vm version of the extension to use"
  default     = "2.0"
}
variable "script_file" {
  description = "bash script file"
  type        = string
  default     = "yum.bash"
}
variable "command" {
  description = "Acc command to execute"
}