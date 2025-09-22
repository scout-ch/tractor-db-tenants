terraform {
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = "3.0.84"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "0.16.0"
    }
  }
}
