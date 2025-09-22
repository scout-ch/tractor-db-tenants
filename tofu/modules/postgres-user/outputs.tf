output "name" {
  value = postgresql_role.this.name
}

output "bitwarden_id" {
  value = local.bitwarden_item.id
}
