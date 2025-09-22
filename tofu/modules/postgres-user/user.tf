resource "postgresql_role" "this" {
  name            = var.name
  create_database = true
  login           = true
  password        = var.password
}

resource "postgresql_grant_role" "webadmin" {
  role              = "webadmin"
  grant_role        = postgresql_role.this.name
  with_admin_option = true
}
