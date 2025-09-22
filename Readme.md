# Tractor DB Tenants

## Prerequisites

- OpenTofu installed
- DB Servers up and running

## Initial Setup

1. Create a new db user and database for Tractor on the shared postgres db.
2. Copy the db password to the `.env` file.

```bash
source .env
cd tofu
tofu init
tofu apply
```

## Creating a mariadb user

To generate the password hash for a mariadb user, run the following SQL directly on the server:
```SQL
SELECT PASSWORD('<super-secret-password>');
```

Then create a file called `terraform.tfvars` inside the `tofu` folder and provide the password hash as follows:

```tfvars
mariadb_user_test_password = "<hash-from-sql-statement>"
```

And add a variable declaration `mariadb_user_test_password` to the `variables.tf` file.