variable "log_analytics_workspaces" {
  description = <<EOT
Map of log_analytics_workspaces, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - allow_resource_only_permissions
    - cmk_for_query_forced
    - daily_quota_gb
    - data_collection_rule_id
    - immediate_data_purge_on_30_days_enabled
    - internet_ingestion_enabled
    - internet_query_enabled
    - local_authentication_disabled
    - local_authentication_enabled
    - reservation_capacity_in_gb_per_day
    - retention_in_days
    - sku
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    location                                = string
    name                                    = string
    resource_group_name                     = string
    allow_resource_only_permissions         = optional(bool)
    cmk_for_query_forced                    = optional(bool)
    daily_quota_gb                          = optional(number)
    data_collection_rule_id                 = optional(string)
    immediate_data_purge_on_30_days_enabled = optional(bool)
    internet_ingestion_enabled              = optional(bool)
    internet_query_enabled                  = optional(bool)
    local_authentication_disabled           = optional(bool)
    local_authentication_enabled            = optional(bool)
    reservation_capacity_in_gb_per_day      = optional(number)
    retention_in_days                       = optional(number)
    sku                                     = optional(string)
    tags                                    = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_workspaces : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_workspaces : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_workspaces : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_workspaces : (
        v.retention_in_days == null || (v.retention_in_days >= 30 && v.retention_in_days <= 730)
      )
    ])
    error_message = "must be between 30 and 730"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_workspaces : (
        v.daily_quota_gb == null || (v.daily_quota_gb >= -1.0)
      )
    ])
    error_message = "must be at least -1.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_workspaces : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

