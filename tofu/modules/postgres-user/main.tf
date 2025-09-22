data "bitwarden_item_login" "this" {
  count = var.bitwarden_id != null ? 1 : 0
  id    = var.bitwarden_id
}

locals {
  bitwarden_item = var.bitwarden_id != null ? data.bitwarden_item_login.this[0] : bitwarden_item_login.this[0]
}
