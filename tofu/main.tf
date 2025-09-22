terraform {
  backend "pg" {
    conn_str = "postgres://tractor-db-tenants-tf:${var.backend_pg_password}@postgres.tractor.scout.ch:5432/tractor-db-tenants-tf?sslmode=disable"
  }
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.84"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.26.0"
    }
  }
}
