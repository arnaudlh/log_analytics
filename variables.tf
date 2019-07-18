variable "resource_group_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Location of the resources"
}

variable "prefix" {
  description = "(Optional) Prefix to add to resources"
  default     = ""
}

variable "name" {
  description = "Log Analytics workspace name"
}

variable "solution_plan_map" {
  description = "(Optional) List of map of the solutions"
  type = map(any)
}

variable "tags" {
  description = "(Required) tagging for the log analytics workspace"
}

variable "logging_map" {
    type = map(any)
    default     = {}
}