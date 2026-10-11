variable "oracle_database_autonomous_databases" {
  description = <<EOT
Map of oracle_database_autonomous_databases, attributes below
Required:
    - autonomous_database_id
    - location
Optional:
    - admin_password
    - cidr
    - database
    - deletion_policy
    - deletion_protection
    - display_name
    - labels
    - network
    - odb_network
    - odb_subnet
    - project
    - properties (block):
        - backup_retention_period_days (optional)
        - character_set (optional)
        - compute_count (optional)
        - cpu_core_count (optional)
        - customer_contacts (optional, block):
            - email (required)
        - data_storage_size_gb (optional)
        - data_storage_size_tb (optional)
        - db_edition (optional)
        - db_version (optional)
        - db_workload (required)
        - is_auto_scaling_enabled (optional)
        - is_storage_auto_scaling_enabled (optional)
        - license_type (required)
        - maintenance_schedule_type (optional)
        - mtls_connection_required (optional)
        - n_character_set (optional)
        - operations_insights_state (optional)
        - private_endpoint_ip (optional)
        - private_endpoint_label (optional)
        - secret_id (optional)
        - vault_id (optional)
    - source_config (block):
        - automatic_backups_replication_enabled (optional)
        - autonomous_database (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    autonomous_database_id = string
    location               = string
    admin_password         = optional(string)
    cidr                   = optional(string)
    database               = optional(string)
    deletion_policy        = optional(string)
    deletion_protection    = optional(bool)
    display_name           = optional(string)
    labels                 = optional(map(string))
    network                = optional(string)
    odb_network            = optional(string)
    odb_subnet             = optional(string)
    project                = optional(string)
    properties = optional(object({
      backup_retention_period_days = optional(number)
      character_set                = optional(string)
      compute_count                = optional(number)
      cpu_core_count               = optional(number)
      customer_contacts = optional(list(object({
        email = string
      })))
      data_storage_size_gb            = optional(number)
      data_storage_size_tb            = optional(number)
      db_edition                      = optional(string)
      db_version                      = optional(string)
      db_workload                     = string
      is_auto_scaling_enabled         = optional(bool)
      is_storage_auto_scaling_enabled = optional(bool)
      license_type                    = string
      maintenance_schedule_type       = optional(string)
      mtls_connection_required        = optional(bool)
      n_character_set                 = optional(string)
      operations_insights_state       = optional(string)
      private_endpoint_ip             = optional(string)
      private_endpoint_label          = optional(string)
      secret_id                       = optional(string)
      vault_id                        = optional(string)
    }))
    source_config = optional(object({
      automatic_backups_replication_enabled = optional(bool)
      autonomous_database                   = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

