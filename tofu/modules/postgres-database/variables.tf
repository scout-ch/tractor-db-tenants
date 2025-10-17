variable "name" {
  type = string
}

variable "owner" {
  type = string
}

variable "encoding" {
  type    = string
  default = "DEFAULT"
}

variable "lc_collate" {
  type    = string
  default = "DEFAULT"
}

variable "lc_ctype" {
  type    = string
  default = "DEFAULT"
}
