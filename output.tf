output "log_analytics_workspace_id" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log_analytics.id
}

output "log_analytics_workspace_name" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log_analytics.name
}

output "id" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log_analytics.id
}


##export the loganalytics identifier