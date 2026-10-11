variable "postgres_endpoints" {
  description = <<EOT
Map of postgres_endpoints, attributes below
Required:
    - endpoint_id
    - parent
Optional:
    - provider_config
    - replace_existing
    - spec
EOT

  type = map(object({
    endpoint_id = string
    parent      = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    replace_existing = optional(bool)
    spec = optional(object({
      autoscaling_limit_max_cu = optional(number)
      autoscaling_limit_min_cu = optional(number)
      disabled                 = optional(bool)
      endpoint_type            = string
      group = optional(object({
        enable_readable_secondaries = optional(bool)
        max                         = number
        min                         = number
      }))
      no_suspension = optional(bool)
      settings = optional(object({
        pg_settings = optional(map(string))
      }))
      suspend_timeout_duration = optional(string)
    }))
  }))
}

