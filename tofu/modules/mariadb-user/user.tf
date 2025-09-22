resource "mysql_user" "this" {
  user               = var.name
  host               = "%"
  auth_plugin        = "mysql_native_password"
  auth_string_hashed = var.password_hash
}
