resource "mysql_user" "this" {
  user               = nonsensitive(local.bitwarden_item.username)
  host               = "%"
  plaintext_password = local.bitwarden_item.password
}
