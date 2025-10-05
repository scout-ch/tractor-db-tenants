resource "random_password" "this" {
  count   = var.bitwarden_id == null ? 1 : 0
  length  = 32
  special = true
  upper   = true
  lower   = true
  numeric = true

  lifecycle {
    ignore_changes = [
      length, # Allows old "manually" generated passwords to remain
    ]
  }
}

resource "bitwarden_item_login" "this" {
  count = var.bitwarden_id == null ? 1 : 0

  name     = "${var.name} (MariaDB)"
  username = var.name
  password = random_password.this[0].result

  organization_id = var.bw_organization_id
  collection_ids  = var.bw_collection_ids

  uri {
    match = "never"
    value = var.postgres_server_uri
  }

  notes = "Managed by OpenTofu 🤖"

  lifecycle {
    ignore_changes = [
      notes,
      field
    ]
  }
}
