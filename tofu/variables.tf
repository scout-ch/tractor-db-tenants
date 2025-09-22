variable "mariadb_user_tractor_uptime_password" {
  type      = string
  sensitive = true
}

variable "backend_pg_password" {
  type      = string
  sensitive = false
}

variable "provider_pg_password" {
  type      = string
  sensitive = true
}
