module "db_tractor_uptime" {
  source = "./modules/mariadb-database"

  name = "tractor_uptime"
  grants = {
    "tractor_uptime" = module.u_tractor_uptime
  }
}
