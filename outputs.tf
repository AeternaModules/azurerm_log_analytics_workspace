output "log_analytics_workspaces_id" {
  description = "Map of id values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_workspaces_allow_resource_only_permissions" {
  description = "Map of allow_resource_only_permissions values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.allow_resource_only_permissions if v.allow_resource_only_permissions != null }
}
output "log_analytics_workspaces_cmk_for_query_forced" {
  description = "Map of cmk_for_query_forced values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.cmk_for_query_forced if v.cmk_for_query_forced != null }
}
output "log_analytics_workspaces_daily_quota_gb" {
  description = "Map of daily_quota_gb values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.daily_quota_gb if v.daily_quota_gb != null }
}
output "log_analytics_workspaces_data_collection_rule_id" {
  description = "Map of data_collection_rule_id values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.data_collection_rule_id if v.data_collection_rule_id != null && length(v.data_collection_rule_id) > 0 }
}
output "log_analytics_workspaces_identity" {
  description = "Map of identity values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "log_analytics_workspaces_immediate_data_purge_on_30_days_enabled" {
  description = "Map of immediate_data_purge_on_30_days_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.immediate_data_purge_on_30_days_enabled if v.immediate_data_purge_on_30_days_enabled != null }
}
output "log_analytics_workspaces_internet_ingestion_enabled" {
  description = "Map of internet_ingestion_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.internet_ingestion_enabled if v.internet_ingestion_enabled != null }
}
output "log_analytics_workspaces_internet_query_enabled" {
  description = "Map of internet_query_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.internet_query_enabled if v.internet_query_enabled != null }
}
output "log_analytics_workspaces_local_authentication_disabled" {
  description = "Map of local_authentication_disabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.local_authentication_disabled if v.local_authentication_disabled != null }
}
output "log_analytics_workspaces_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.local_authentication_enabled if v.local_authentication_enabled != null }
}
output "log_analytics_workspaces_location" {
  description = "Map of location values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.location if v.location != null && length(v.location) > 0 }
}
output "log_analytics_workspaces_name" {
  description = "Map of name values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "log_analytics_workspaces_primary_shared_key" {
  description = "Map of primary_shared_key values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.primary_shared_key if v.primary_shared_key != null && length(v.primary_shared_key) > 0 }
  sensitive   = true
}
output "log_analytics_workspaces_reservation_capacity_in_gb_per_day" {
  description = "Map of reservation_capacity_in_gb_per_day values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.reservation_capacity_in_gb_per_day if v.reservation_capacity_in_gb_per_day != null }
}
output "log_analytics_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "log_analytics_workspaces_retention_in_days" {
  description = "Map of retention_in_days values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.retention_in_days if v.retention_in_days != null }
}
output "log_analytics_workspaces_secondary_shared_key" {
  description = "Map of secondary_shared_key values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.secondary_shared_key if v.secondary_shared_key != null && length(v.secondary_shared_key) > 0 }
  sensitive   = true
}
output "log_analytics_workspaces_sku" {
  description = "Map of sku values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "log_analytics_workspaces_tags" {
  description = "Map of tags values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "log_analytics_workspaces_workspace_id" {
  description = "Map of workspace_id values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

