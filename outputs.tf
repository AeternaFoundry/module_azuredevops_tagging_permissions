output "tagging_permissions_id" {
  description = "Map of id values across all tagging_permissions, keyed the same as var.tagging_permissions"
  value       = { for k, v in azuredevops_tagging_permissions.tagging_permissions : k => v.id }
}
output "tagging_permissions_permissions" {
  description = "Map of permissions values across all tagging_permissions, keyed the same as var.tagging_permissions"
  value       = { for k, v in azuredevops_tagging_permissions.tagging_permissions : k => v.permissions }
}
output "tagging_permissions_principal" {
  description = "Map of principal values across all tagging_permissions, keyed the same as var.tagging_permissions"
  value       = { for k, v in azuredevops_tagging_permissions.tagging_permissions : k => v.principal }
}
output "tagging_permissions_project_id" {
  description = "Map of project_id values across all tagging_permissions, keyed the same as var.tagging_permissions"
  value       = { for k, v in azuredevops_tagging_permissions.tagging_permissions : k => v.project_id }
}
output "tagging_permissions_replace" {
  description = "Map of replace values across all tagging_permissions, keyed the same as var.tagging_permissions"
  value       = { for k, v in azuredevops_tagging_permissions.tagging_permissions : k => v.replace }
}

