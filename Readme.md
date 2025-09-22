# Tractor DB Tenants

## Prerequisites

- OpenTofu installed
- DB Servers up and running

## Initial Setup

1. Install the bitwarden cli: https://bitwarden.com/help/cli/
2. Copy `.env.example` to `.env`
3. Look up the db password in bitwarden and add it to .env
4. Create a API Key: https://bitwarden.com/help/personal-api-key/ and set all the values in the `.env` file

```bash
source .env
cd tofu
tofu init
tofu apply
```