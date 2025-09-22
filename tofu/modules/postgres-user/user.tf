resource "postgresql_role" "this" {
  create_database = true
  login           = true
  name            = nonsensitive(local.bitwarden_item.username)
  password        = local.bitwarden_item.password
}

resource "postgresql_grant_role" "webadmin" {
  role              = "webadmin"
  grant_role        = postgresql_role.this.name
  with_admin_option = true
}
