provider "mysql" {
  endpoint = "mariadb.tractor.scout.ch:3306"
  username = "root"
  tls      = false
}

provider "postgresql" {
  host     = "postgres.tractor.scout.ch"
  port     = 5432
  database = "postgres"
  username = "webadmin"
  password = var.provider_pg_password
  sslmode  = "disable"
}
