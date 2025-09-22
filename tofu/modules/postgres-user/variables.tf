variable "name" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}
