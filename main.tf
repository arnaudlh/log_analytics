resource "azurerm_log_analytics_workspace" "log" {
  name                = "${var.prefix}${var.name}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  tags                = var.tags
}

locals {
  solution_list = keys(var.solution_plan_map)
}

resource "azurerm_log_analytics_solution" "container_insights" {
  count                 = length(local.solution_list)
  solution_name         = element(local.solution_list, count.index)
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log.id
  workspace_name        = azurerm_log_analytics_workspace.log.name

  dynamic "plan" {
    for_each = var.solution_plan_map
    content {

      product        = plan.value.product
      publisher      = plan.value.publisher
    }
  }
}

