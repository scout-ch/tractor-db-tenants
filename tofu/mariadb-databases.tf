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
module "db_pfadi_finder_midata_adapter" {
  source = "./modules/pfadi_finder_midata_adapter"

  name = "pfadi-finder-midata-adapter"
  grants = {
    "pfadi-finder-midata-adapter" = module.u_pfadi_finder_midata_adapter
  }
}
