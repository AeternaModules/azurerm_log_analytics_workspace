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
    allow_resource_only_permissions         = optional(bool) # Default: true
    cmk_for_query_forced                    = optional(bool)
    daily_quota_gb                          = optional(number) # Default: -1
    data_collection_rule_id                 = optional(string)
    immediate_data_purge_on_30_days_enabled = optional(bool)
    internet_ingestion_enabled              = optional(bool) # Default: true
    internet_query_enabled                  = optional(bool) # Default: true
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
        v.retention_in_days == null || (v.retention_in_days >= 30 && v.retention_in_days <= 730)
      )
    ])
    error_message = "must be between 30 and 730"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_log_analytics_workspace's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.LogAnalyticsWorkspaceName] !regexp.MustCompile("^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$").MatchString(value)
  # path: name
  #   source:    [from validate.LogAnalyticsWorkspaceName] length > 63 || 4 > length
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: reservation_capacity_in_gb_per_day
  #   source:    validation.IntInSlice(...) - no translation rule yet, add one
  # path: daily_quota_gb
  #   source:    validation.FloatAtLeast(...) - no translation rule yet, add one
  # path: data_collection_rule_id
  #   source:    [from datacollectionrules.ValidateDataCollectionRuleID] !ok
  # path: data_collection_rule_id
  #   source:    [from datacollectionrules.ValidateDataCollectionRuleID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

