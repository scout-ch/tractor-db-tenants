# Tractor DB Tenants

## Prerequisites

- OpenTofu installed: https://opentofu.org/docs/intro/install/
- Bitwarden CLI Installed: https://bitwarden.com/help/cli/
- DB Servers up and running
- Recommended: [OpenTofu Plugin Caching](https://opentofu.org/docs/cli/config/config-file/#provider-plugin-cache) set up 

## Initial Setup

1. Copy `.env.example` to `.env`
2. Look up the `tractor-db-tenants-tf` db password in bitwarden and add it to `.env`
3. Create a Bitwarden API Key (https://bitwarden.com/help/personal-api-key/) and set all the values (incl. you personal Vault Password) in the `.env` file

```bash
source .env
cd tofu
tofu init
tofu apply
```