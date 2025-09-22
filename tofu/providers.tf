data "bitwarden_item_login" "mariadb_admin" {
  id = "49a3600f-90a7-40ae-b37c-d52e4f89c4d2"
}

provider "mysql" {
  endpoint = "mariadb.tractor.scout.ch:3306"
  username = nonsensitive(data.bitwarden_item_login.mariadb_admin.username)
  password = data.bitwarden_item_login.mariadb_admin.password
  tls      = false
}

data "bitwarden_item_login" "postgres_admin" {
  id = "c47b840b-6753-400f-91f8-97ec146f78d9"
}

provider "postgresql" {
  host     = "postgres.tractor.scout.ch"
  port     = 5432
  database = "postgres"
  username = nonsensitive(data.bitwarden_item_login.postgres_admin.username)
  password = data.bitwarden_item_login.postgres_admin.password
  sslmode  = "disable"
}

provider "bitwarden" {
  # Configure with env vars: https://registry.terraform.io/providers/maxlaverse/bitwarden/latest/docs#environment-variables
  # see .env.example
  server = "https://vaultwarden.scout.ch"
}

provider "random" {}
