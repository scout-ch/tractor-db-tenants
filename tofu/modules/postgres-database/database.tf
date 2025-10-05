resource "postgresql_database" "this" {
  name                   = var.name
  owner                  = var.owner
  alter_object_ownership = true
  encoding               = "DEFAULT"
  lc_collate             = "DEFAULT"
  lc_ctype               = "DEFAULT"

  lifecycle {
    ignore_changes = [
      encoding,
      lc_collate,
      lc_ctype,
    ]
  }
}

resource "postgresql_grant" "db_connect" {
  database    = var.name
  role        = var.owner
  object_type = "database"
  privileges  = ["CONNECT"]
}
