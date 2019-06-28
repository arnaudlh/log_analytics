output "log_analytics_workspace_id" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log.id
}

output "log_analytics_workspace_name" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log.name
}

output "id" {
  depends_on = [azurerm_log_analytics_solution.container_insights]
  value      = azurerm_log_analytics_workspace.log.id
}


##export the loganalytics identifier