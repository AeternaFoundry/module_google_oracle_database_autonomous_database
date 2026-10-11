resource "google_oracle_database_autonomous_database" "oracle_database_autonomous_databases" {
  for_each = var.oracle_database_autonomous_databases

  autonomous_database_id = each.value.autonomous_database_id
  location               = each.value.location
  admin_password         = each.value.admin_password
  cidr                   = each.value.cidr
  database               = each.value.database
  deletion_policy        = each.value.deletion_policy
  deletion_protection    = each.value.deletion_protection
  display_name           = each.value.display_name
  labels                 = each.value.labels
  network                = each.value.network
  odb_network            = each.value.odb_network
  odb_subnet             = each.value.odb_subnet
  project                = each.value.project

  dynamic "properties" {
    for_each = each.value.properties != null ? [each.value.properties] : []
    content {
      backup_retention_period_days = properties.value.backup_retention_period_days
      character_set                = properties.value.character_set
      compute_count                = properties.value.compute_count
      cpu_core_count               = properties.value.cpu_core_count
      dynamic "customer_contacts" {
        for_each = properties.value.customer_contacts != null ? properties.value.customer_contacts : []
        content {
          email = customer_contacts.value.email
        }
      }
      data_storage_size_gb            = properties.value.data_storage_size_gb
      data_storage_size_tb            = properties.value.data_storage_size_tb
      db_edition                      = properties.value.db_edition
      db_version                      = properties.value.db_version
      db_workload                     = properties.value.db_workload
      is_auto_scaling_enabled         = properties.value.is_auto_scaling_enabled
      is_storage_auto_scaling_enabled = properties.value.is_storage_auto_scaling_enabled
      license_type                    = properties.value.license_type
      maintenance_schedule_type       = properties.value.maintenance_schedule_type
      mtls_connection_required        = properties.value.mtls_connection_required
      n_character_set                 = properties.value.n_character_set
      operations_insights_state       = properties.value.operations_insights_state
      private_endpoint_ip             = properties.value.private_endpoint_ip
      private_endpoint_label          = properties.value.private_endpoint_label
      secret_id                       = properties.value.secret_id
      vault_id                        = properties.value.vault_id
    }
  }

  dynamic "source_config" {
    for_each = each.value.source_config != null ? [each.value.source_config] : []
    content {
      automatic_backups_replication_enabled = source_config.value.automatic_backups_replication_enabled
      autonomous_database                   = source_config.value.autonomous_database
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

