resource "databricks_postgres_endpoint" "postgres_endpoints" {
  for_each = var.postgres_endpoints

  endpoint_id      = each.value.endpoint_id
  parent           = each.value.parent
  provider_config  = each.value.provider_config
  replace_existing = each.value.replace_existing
  spec             = each.value.spec
}

