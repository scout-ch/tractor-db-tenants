terraform {
  backend "pg" {
    conn_str = "postgres://tractor-db-tenants-tf@postgres.tractor.scout.ch:5432/tractor-db-tenants-tf?sslmode=disable"
  }
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.87"
    }
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.26.0"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "0.16.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}
