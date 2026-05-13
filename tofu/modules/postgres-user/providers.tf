terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = "1.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
    bitwarden = {
      source  = "maxlaverse/bitwarden"
      version = "0.17.6"
    }
  }
}
