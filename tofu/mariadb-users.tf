module "u_cosinus_ragflow" {
  source = "./modules/mariadb-user"

  name          = "cosinus-ragflow"
  password_hash = var.mariadb_user_cosinus_ragflow_password
}
