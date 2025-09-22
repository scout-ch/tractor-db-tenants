module "u_tractor_uptime" {
  source = "./modules/mariadb-user"

  name          = "tractor_uptime"
  password_hash = var.mariadb_user_tractor_uptime_password
}
