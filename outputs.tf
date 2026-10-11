output "oracle_database_autonomous_databases_id" {
  description = "Map of id values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no id are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oracle_database_autonomous_databases_admin_password" {
  description = "Map of admin_password values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no admin_password are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.admin_password if v.admin_password != null && length(v.admin_password) > 0 }
}
output "oracle_database_autonomous_databases_autonomous_database_id" {
  description = "Map of autonomous_database_id values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no autonomous_database_id are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.autonomous_database_id if v.autonomous_database_id != null && length(v.autonomous_database_id) > 0 }
}
output "oracle_database_autonomous_databases_cidr" {
  description = "Map of cidr values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no cidr are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.cidr if v.cidr != null && length(v.cidr) > 0 }
}
output "oracle_database_autonomous_databases_create_time" {
  description = "Map of create_time values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no create_time are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "oracle_database_autonomous_databases_database" {
  description = "Map of database values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no database are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.database if v.database != null && length(v.database) > 0 }
}
output "oracle_database_autonomous_databases_deletion_policy" {
  description = "Map of deletion_policy values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no deletion_policy are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "oracle_database_autonomous_databases_deletion_protection" {
  description = "Map of deletion_protection values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no deletion_protection are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.deletion_protection if v.deletion_protection != null }
}
output "oracle_database_autonomous_databases_disaster_recovery_supported_locations" {
  description = "Map of disaster_recovery_supported_locations values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no disaster_recovery_supported_locations are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.disaster_recovery_supported_locations if v.disaster_recovery_supported_locations != null && length(v.disaster_recovery_supported_locations) > 0 }
}
output "oracle_database_autonomous_databases_display_name" {
  description = "Map of display_name values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no display_name are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "oracle_database_autonomous_databases_effective_labels" {
  description = "Map of effective_labels values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no effective_labels are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "oracle_database_autonomous_databases_entitlement_id" {
  description = "Map of entitlement_id values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no entitlement_id are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.entitlement_id if v.entitlement_id != null && length(v.entitlement_id) > 0 }
}
output "oracle_database_autonomous_databases_labels" {
  description = "Map of labels values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no labels are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "oracle_database_autonomous_databases_location" {
  description = "Map of location values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no location are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.location if v.location != null && length(v.location) > 0 }
}
output "oracle_database_autonomous_databases_name" {
  description = "Map of name values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no name are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.name if v.name != null && length(v.name) > 0 }
}
output "oracle_database_autonomous_databases_network" {
  description = "Map of network values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no network are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.network if v.network != null && length(v.network) > 0 }
}
output "oracle_database_autonomous_databases_odb_network" {
  description = "Map of odb_network values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no odb_network are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.odb_network if v.odb_network != null && length(v.odb_network) > 0 }
}
output "oracle_database_autonomous_databases_odb_subnet" {
  description = "Map of odb_subnet values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no odb_subnet are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.odb_subnet if v.odb_subnet != null && length(v.odb_subnet) > 0 }
}
output "oracle_database_autonomous_databases_peer_autonomous_databases" {
  description = "Map of peer_autonomous_databases values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no peer_autonomous_databases are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.peer_autonomous_databases if v.peer_autonomous_databases != null && length(v.peer_autonomous_databases) > 0 }
}
output "oracle_database_autonomous_databases_project" {
  description = "Map of project values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no project are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.project if v.project != null && length(v.project) > 0 }
}
output "oracle_database_autonomous_databases_properties" {
  description = "Map of properties values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no properties are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => one(v.properties) if v.properties != null && length(v.properties) > 0 }
}
output "oracle_database_autonomous_databases_source_config" {
  description = "Map of source_config values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no source_config are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => one(v.source_config) if v.source_config != null && length(v.source_config) > 0 }
}
output "oracle_database_autonomous_databases_terraform_labels" {
  description = "Map of terraform_labels values across all oracle_database_autonomous_databases, keyed the same as var.oracle_database_autonomous_databases except keys with no terraform_labels are omitted"
  value       = { for k, v in google_oracle_database_autonomous_database.oracle_database_autonomous_databases : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

