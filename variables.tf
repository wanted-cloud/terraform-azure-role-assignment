variable "name" {
  description = "UUID valid name of created role assignment."
  type        = string
  default     = ""
}

variable "scope" {
  description = "Scope of the role assignment."
  type        = string
}

variable "role_definition_name" {
  description = "The name of a built-in Role. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "role_definition_id" {
  description = "The Scoped-ID of the Role Definition. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "principal_id" {
  description = "The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to."
  type        = string
}

variable "principal_type" {
  description = "The type of the principal_id. Possible values are User, Group and ServicePrincipal. Changing this forces a new resource to be created. It is necessary to explicitly set this attribute when creating role assignments if the principal creating the assignment is constrained by ABAC rules that filters on the PrincipalType attribute."
  type        = string
  default     = ""
}

variable "condition" {
  description = "A condition that must be satisfied for the role assignment to be effective. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "condition_version" {
  description = "The version of the condition. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "description" {
  description = "Description of the role assignment."
  type        = string
  default     = ""

}

variable "skip_service_principal_aad_check" {
  description = "Flag to skip service principal AAD check."
  type        = bool
  default     = false
}

