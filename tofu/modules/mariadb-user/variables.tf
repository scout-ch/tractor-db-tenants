variable "name" {
  type = string
}

variable "password_hash" {
  type      = string
  sensitive = true
}
