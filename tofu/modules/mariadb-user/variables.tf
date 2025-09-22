variable "name" {
  description = "Name of the user. Not uses if a bitwarden_id is given"
  type        = string
  nullable    = true
  default     = null
  validation {
    condition     = (var.name != null && var.bitwarden_id == null) || (var.name == null && var.bitwarden_id != null)
    error_message = "You need to exclusively specify either name or bitwarden_id"
  }
}

variable "bitwarden_id" {
  description = "Id of a pre-existing bitwarden item"
  type        = string
  nullable    = true
  default     = null
}

variable "postgres_server_uri" {
  description = "Url of the postgres server to put into bitwarden items"
  type        = string
  nullable    = false
  default     = "mariadb.tractor.scout.ch:3306"
}

variable "bw_organization_id" {
  description = "Id of a bitwarden organization to own the login item of this user"
  type        = string
  nullable    = false
  default     = "722d399f-2ed1-41d1-a420-e1aca40a6abc"
}

variable "bw_collection_ids" {
  description = "Set of ids of bitwarden collections"
  type        = set(string)
  nullable    = false
  default     = ["41434b68-3c92-445e-9db8-5e6eadfe4744"]
}
