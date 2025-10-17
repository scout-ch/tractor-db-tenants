# Purposefully not managed:
# - pbs-vaultwarden
# - tractor-db-tenants-tf
# - tractor-os-tenants-tf

module "u_auth_keycloak" {
  source = "./modules/postgres-user"
  name   = "auth-keycloak"
}

module "u_cosinus_ragflow" {
  source = "./modules/postgres-user"
  name   = "cosinus-ragflow"
}

module "u_itkom_twitterbox" {
  source = "./modules/postgres-user"
  name   = "itkom-twitterbox"
}

module "u_pbs_hering" {
  source = "./modules/postgres-user"
  name   = "pbs-hering"
}

module "u_pbs_rally" {
  source = "./modules/postgres-user"
  name   = "pbs-rallly"
}

module "u_pbs_taiga" {
  source = "./modules/postgres-user"
  name   = "pbs-taiga"
}

module "u_pbs_matrix" {
  source = "./modules/postgres-user"
  name   = "pbs-matrix"
}

module "u_pbs_matrix_authentication_service" {
  source = "./modules/postgres-user"
  name   = "pbs-matrix-authentication-service"
}
