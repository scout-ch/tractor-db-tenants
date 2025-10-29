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

module "db_pbs_hering_staging" {
  source = "./modules/postgres-database"

  name  = "pbs-hering-staging"
  owner = module.u_pbs_hering_staging.name
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

module "db_pbs_matrix" {
  source = "./modules/postgres-database"

  encoding   = "UTF8"
  lc_collate = "C"
  lc_ctype   = "C"

  name  = "pbs-matrix"
  owner = module.u_pbs_matrix.name
}

module "db_pbs_matrix_authentication_service" {
  source = "./modules/postgres-database"

  name  = "pbs-matrix-authentication-service"
  owner = module.u_pbs_matrix_authentication_service.name
}
