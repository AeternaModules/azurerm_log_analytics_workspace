output "log_analytics_workspaces_allow_resource_only_permissions" {
  description = "Map of allow_resource_only_permissions values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.allow_resource_only_permissions }
}
output "log_analytics_workspaces_cmk_for_query_forced" {
  description = "Map of cmk_for_query_forced values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.cmk_for_query_forced }
}
output "log_analytics_workspaces_daily_quota_gb" {
  description = "Map of daily_quota_gb values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.daily_quota_gb }
}
output "log_analytics_workspaces_data_collection_rule_id" {
  description = "Map of data_collection_rule_id values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.data_collection_rule_id }
}
output "log_analytics_workspaces_identity" {
  description = "Map of identity values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.identity }
}
output "log_analytics_workspaces_immediate_data_purge_on_30_days_enabled" {
  description = "Map of immediate_data_purge_on_30_days_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.immediate_data_purge_on_30_days_enabled }
}
output "log_analytics_workspaces_internet_ingestion_enabled" {
  description = "Map of internet_ingestion_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.internet_ingestion_enabled }
}
output "log_analytics_workspaces_internet_query_enabled" {
  description = "Map of internet_query_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.internet_query_enabled }
}
output "log_analytics_workspaces_local_authentication_disabled" {
  description = "Map of local_authentication_disabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.local_authentication_disabled }
}
output "log_analytics_workspaces_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.local_authentication_enabled }
}
output "log_analytics_workspaces_location" {
  description = "Map of location values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.location }
}
output "log_analytics_workspaces_name" {
  description = "Map of name values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.name }
}
output "log_analytics_workspaces_primary_shared_key" {
  description = "Map of primary_shared_key values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.primary_shared_key }
  sensitive   = true
}
output "log_analytics_workspaces_reservation_capacity_in_gb_per_day" {
  description = "Map of reservation_capacity_in_gb_per_day values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.reservation_capacity_in_gb_per_day }
}
output "log_analytics_workspaces_resource_group_name" {
  description = "Map of resource_group_name values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.resource_group_name }
}
output "log_analytics_workspaces_retention_in_days" {
  description = "Map of retention_in_days values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.retention_in_days }
}
output "log_analytics_workspaces_secondary_shared_key" {
  description = "Map of secondary_shared_key values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.secondary_shared_key }
  sensitive   = true
}
output "log_analytics_workspaces_sku" {
  description = "Map of sku values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.sku }
}
output "log_analytics_workspaces_tags" {
  description = "Map of tags values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.tags }
}
output "log_analytics_workspaces_workspace_id" {
  description = "Map of workspace_id values across all log_analytics_workspaces, keyed the same as var.log_analytics_workspaces"
  value       = { for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : k => v.workspace_id }
}

