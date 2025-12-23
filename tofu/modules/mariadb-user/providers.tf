terraform {
  required_providers {
    mysql = {
      source  = "petoju/mysql"
      version = ">=3.0.87,<4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.7.2,<4.0.0"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = ">=0.16.0, <1.0.0"
    }
  }
}
