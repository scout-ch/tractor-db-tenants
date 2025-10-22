resource "postgresql_database" "this" {
  name                   = var.name
  owner                  = var.owner
  alter_object_ownership = true
  encoding               = var.encoding
  lc_collate             = var.lc_collate
  lc_ctype               = var.lc_ctype

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
  privileges = [
    "CONNECT",
    "CREATE",
    "TEMPORARY",
  ]

  depends_on = [
    postgresql_database.this
  ]
}
