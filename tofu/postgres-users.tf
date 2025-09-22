module "u_test" {
  source = "./modules/postgres-user"

  name     = "test"
  password = "password 123"
}
