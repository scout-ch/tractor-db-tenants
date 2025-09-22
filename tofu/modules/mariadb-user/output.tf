output "user_name" {
  value = mysql_user.this.user
}

output "user_host" {
  value = mysql_user.this.host
}
