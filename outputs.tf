output "postgres_endpoints_create_time" {
  description = "Map of create_time values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no create_time are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "postgres_endpoints_endpoint_id" {
  description = "Map of endpoint_id values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no endpoint_id are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.endpoint_id if v.endpoint_id != null && length(v.endpoint_id) > 0 }
}
output "postgres_endpoints_name" {
  description = "Map of name values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no name are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.name if v.name != null && length(v.name) > 0 }
}
output "postgres_endpoints_parent" {
  description = "Map of parent values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no parent are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "postgres_endpoints_provider_config" {
  description = "Map of provider_config values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no provider_config are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "postgres_endpoints_replace_existing" {
  description = "Map of replace_existing values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no replace_existing are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.replace_existing if v.replace_existing != null }
}
output "postgres_endpoints_spec" {
  description = "Map of spec values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no spec are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.spec if v.spec != null && length(v.spec) > 0 }
}
output "postgres_endpoints_status" {
  description = "Map of status values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no status are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.status if v.status != null && length(v.status) > 0 }
}
output "postgres_endpoints_uid" {
  description = "Map of uid values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no uid are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "postgres_endpoints_update_time" {
  description = "Map of update_time values across all postgres_endpoints, keyed the same as var.postgres_endpoints except keys with no update_time are omitted"
  value       = { for k, v in databricks_postgres_endpoint.postgres_endpoints : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

