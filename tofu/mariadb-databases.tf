module "db_tractor_uptime" {
  source = "./modules/mariadb-database"

  name = "tractor_uptime"
  grants = {
    "tractor_uptime" = module.u_tractor_uptime
  }
}
module "db_mova_erinnerungsbuch" {
  source = "./modules/mariadb-database"

  name = "mova-erinnerungsbuch"
  grants = {
    "mova-erinnerungsbuch" = module.u_mova_erinnerungsbuch
  }
}
