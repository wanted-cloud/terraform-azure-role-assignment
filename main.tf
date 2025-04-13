/*
 * # wanted-cloud/terraform-azure-role-assignment
 * 
 * Simple Terraform building blog wrapping resources around Azure IAM role assignment.
 */

resource "azurerm_role_assignment" "this" {
  name                             = var.name != "" ? var.name : null
  scope                            = var.scope
  role_definition_name             = var.role_definition_name != "" ? var.role_definition_name : null
  role_definition_id               = var.role_definition_id != "" ? var.role_definition_id : null
  principal_id                     = var.principal_id
  principal_type                   = var.principal_type != "" ? var.principal_type : null
  condition                        = var.condition != "" ? var.condition : null
  condition_version                = var.condition_version != "" ? var.condition_version : null
  description                      = var.description != "" ? var.description : null
  skip_service_principal_aad_check = var.skip_service_principal_aad_check

  timeouts {
    create = try(
      local.metadata.resource_timeouts["azurerm_role_assignment"]["create"],
      local.metadata.resource_timeouts["default"]["create"]
    )
    read = try(
      local.metadata.resource_timeouts["azurerm_role_assignment"]["read"],
      local.metadata.resource_timeouts["default"]["read"]
    )
    delete = try(
      local.metadata.resource_timeouts["azurerm_role_assignment"]["delete"],
      local.metadata.resource_timeouts["default"]["delete"]
    )
  }
}