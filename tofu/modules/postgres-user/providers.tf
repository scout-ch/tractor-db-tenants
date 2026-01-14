terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.0"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "0.16.0"
    }
  }
}
