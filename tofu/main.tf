terraform {
  backend "pg" {
    conn_str = "postgres://tractor-db-tenants-tf@postgres.tractor.scout.ch:5432/tractor-db-tenants-tf?sslmode=disable"
  }
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.88"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.26.0"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "0.17.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
  }
}
