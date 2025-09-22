module "db_auth_keycloak" {
  source = "./modules/postgres-database"

  name  = "auth-keycloak"
  owner = module.u_auth_keycloak.name
}

module "db_cosinus_ragflow" {
  source = "./modules/postgres-database"

  name  = "cosinus-ragflow"
  owner = module.u_cosinus_ragflow.name
}

module "db_itkom_twitterbox" {
  source = "./modules/postgres-database"

  name  = "itkom-twitterbox"
  owner = module.u_itkom_twitterbox.name
}

module "db_pbs_hering" {
  source = "./modules/postgres-database"

  name  = "pbs-hering"
  owner = module.u_pbs_hering.name
}

module "db_pbs_rally" {
  source = "./modules/postgres-database"

  name  = "pbs-rallly"
  owner = module.u_pbs_rally.name
}

module "db_pbs_taiga" {
  source = "./modules/postgres-database"

  name  = "pbs-taiga"
  owner = module.u_pbs_taiga.name
}
