variable "tagging_permissions" {
  description = <<EOT
Map of tagging_permissions, attributes below
Required:
    - permissions
    - principal
Optional:
    - project_id
    - replace
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    permissions = map(string)
    principal   = string
    project_id  = optional(string)
    replace     = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.tagging_permissions : (
        v.project_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

