module "u_tractor_uptime" {
  source = "./modules/mariadb-user"

  name = "tractor_uptime"
}

module "u_mova_erinnerungsbuch" {
  source = "./modules/mariadb-user"

  name = "mova-erinnerungsbuch"
}

module "u_pfadi_finder_midata_adapter" {
  source = "./modules/mariadb-user"

  name = "pfadi-finder-midata-adapter"
}
