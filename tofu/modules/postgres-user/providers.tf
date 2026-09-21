terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.27.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.9.1"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "0.20.0"
    }
  }
}
