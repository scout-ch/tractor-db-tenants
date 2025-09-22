module "db_test" {
  source = "./modules/postgres-database"

  name  = "test"
  owner = module.u_test.name
}
