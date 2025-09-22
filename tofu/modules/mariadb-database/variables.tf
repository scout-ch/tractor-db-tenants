variable "name" {
  type = string
}

variable "grants" {
  type = map(object({
    user = string,
    host = string
  }))
  default = {}
}
