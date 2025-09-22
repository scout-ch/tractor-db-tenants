variable "name" {
  type = string
}

variable "grants" {
  type = map(object({
    user_name = string,
    user_host = string
  }))
  default = {}
}
