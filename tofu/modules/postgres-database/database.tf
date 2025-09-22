resource "postgresql_database" "this" {
  name                   = var.name
  owner                  = var.owner
  alter_object_ownership = true
  encoding               = "DEFAULT"
  lc_collate             = "DEFAULT"
  lc_ctype               = "DEFAULT"
}
