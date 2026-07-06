output "log_analytics_workspaces" {
  description = "All log_analytics_workspace resources"
  value       = azurerm_log_analytics_workspace.log_analytics_workspaces
  sensitive   = true
}
output "log_analytics_workspaces_allow_resource_only_permissions" {
  description = "List of allow_resource_only_permissions values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.allow_resource_only_permissions]
}
output "log_analytics_workspaces_cmk_for_query_forced" {
  description = "List of cmk_for_query_forced values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.cmk_for_query_forced]
}
output "log_analytics_workspaces_daily_quota_gb" {
  description = "List of daily_quota_gb values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.daily_quota_gb]
}
output "log_analytics_workspaces_data_collection_rule_id" {
  description = "List of data_collection_rule_id values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.data_collection_rule_id]
}
output "log_analytics_workspaces_identity" {
  description = "List of identity values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.identity]
}
output "log_analytics_workspaces_immediate_data_purge_on_30_days_enabled" {
  description = "List of immediate_data_purge_on_30_days_enabled values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.immediate_data_purge_on_30_days_enabled]
}
output "log_analytics_workspaces_internet_ingestion_enabled" {
  description = "List of internet_ingestion_enabled values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.internet_ingestion_enabled]
}
output "log_analytics_workspaces_internet_query_enabled" {
  description = "List of internet_query_enabled values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.internet_query_enabled]
}
output "log_analytics_workspaces_local_authentication_disabled" {
  description = "List of local_authentication_disabled values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.local_authentication_disabled]
}
output "log_analytics_workspaces_local_authentication_enabled" {
  description = "List of local_authentication_enabled values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.local_authentication_enabled]
}
output "log_analytics_workspaces_location" {
  description = "List of location values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.location]
}
output "log_analytics_workspaces_name" {
  description = "List of name values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.name]
}
output "log_analytics_workspaces_primary_shared_key" {
  description = "List of primary_shared_key values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.primary_shared_key]
  sensitive   = true
}
output "log_analytics_workspaces_reservation_capacity_in_gb_per_day" {
  description = "List of reservation_capacity_in_gb_per_day values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.reservation_capacity_in_gb_per_day]
}
output "log_analytics_workspaces_resource_group_name" {
  description = "List of resource_group_name values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.resource_group_name]
}
output "log_analytics_workspaces_retention_in_days" {
  description = "List of retention_in_days values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.retention_in_days]
}
output "log_analytics_workspaces_secondary_shared_key" {
  description = "List of secondary_shared_key values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.secondary_shared_key]
  sensitive   = true
}
output "log_analytics_workspaces_sku" {
  description = "List of sku values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.sku]
}
output "log_analytics_workspaces_tags" {
  description = "List of tags values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.tags]
}
output "log_analytics_workspaces_workspace_id" {
  description = "List of workspace_id values across all log_analytics_workspaces"
  value       = [for k, v in azurerm_log_analytics_workspace.log_analytics_workspaces : v.workspace_id]
}

