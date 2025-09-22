module "db_cosinus_ragflow" {
  source = "./modules/mariadb-database"

  name = "cosinus-ragflow"
  grants = {
    "cosinus-ragflow" = {
      user = module.u_cosinus_ragflow.user_name
      host = module.u_cosinus_ragflow.user_host
    }
  }
}
