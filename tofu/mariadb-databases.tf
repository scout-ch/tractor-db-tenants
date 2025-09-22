module "db_tractor_uptime" {
  source = "./modules/mariadb-database"

  name = "tractor_uptime"
  grants = {
    "tractor_uptime" = {
      user = module.u_tractor_uptime.user_name
      host = module.u_tractor_uptime.user_host
    }
  }
}

