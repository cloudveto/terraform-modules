variable "name" {
  description = "A short description"
}
variable "key_vault_id" {
  description = "key vault id"
}
variable "key_type" {
  description = "key type. RSA"
}
variable "key_size" {
  description = "key size. 1024, 2048, 4096"
  type = number
}
variable "key_opts" {
  description = "key opts"
  type = list(string)
}