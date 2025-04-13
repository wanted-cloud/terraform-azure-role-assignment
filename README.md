<!-- BEGIN_TF_DOCS -->
# wanted-cloud/terraform-azure-role-assignment

Simple Terraform building blog wrapping resources around Azure IAM role assignment.

## Table of contents

- [Requirements](#requirements)
- [Providers](#providers)
- [Variables](#inputs)
- [Outputs](#outputs)
- [Resources](#resources)
- [Usage](#usage)
- [Contributing](#contributing)

## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm)

## Required Inputs

The following input variables are required:

### <a name="input_principal_id"></a> [principal\_id](#input\_principal\_id)

Description: The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to.

Type: `string`

### <a name="input_scope"></a> [scope](#input\_scope)

Description: Scope of the role assignment.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_condition"></a> [condition](#input\_condition)

Description: A condition that must be satisfied for the role assignment to be effective. Changing this forces a new resource to be created.

Type: `string`

Default: `""`

### <a name="input_condition_version"></a> [condition\_version](#input\_condition\_version)

Description: The version of the condition. Changing this forces a new resource to be created.

Type: `string`

Default: `""`

### <a name="input_description"></a> [description](#input\_description)

Description: Description of the role assignment.

Type: `string`

Default: `""`

### <a name="input_metadata"></a> [metadata](#input\_metadata)

Description: Metadata definitions for the module, this is optional construct allowing override of the module defaults defintions of validation expressions, error messages, resource timeouts and default tags.

Type:

```hcl
object({
    resource_timeouts = optional(
      map(
        object({
          create = optional(string, "30m")
          read   = optional(string, "5m")
          update = optional(string, "30m")
          delete = optional(string, "30m")
        })
      ), {}
    )
    tags                     = optional(map(string), {})
    validator_error_messages = optional(map(string), {})
    validator_expressions    = optional(map(string), {})
  })
```

Default: `{}`

### <a name="input_name"></a> [name](#input\_name)

Description: UUID valid name of created role assignment.

Type: `string`

Default: `""`

### <a name="input_principal_type"></a> [principal\_type](#input\_principal\_type)

Description: The type of the principal\_id. Possible values are User, Group and ServicePrincipal. Changing this forces a new resource to be created. It is necessary to explicitly set this attribute when creating role assignments if the principal creating the assignment is constrained by ABAC rules that filters on the PrincipalType attribute.

Type: `string`

Default: `""`

### <a name="input_role_definition_id"></a> [role\_definition\_id](#input\_role\_definition\_id)

Description: The Scoped-ID of the Role Definition. Changing this forces a new resource to be created.

Type: `string`

Default: `""`

### <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name)

Description: The name of a built-in Role. Changing this forces a new resource to be created.

Type: `string`

Default: `""`

### <a name="input_skip_service_principal_aad_check"></a> [skip\_service\_principal\_aad\_check](#input\_skip\_service\_principal\_aad\_check)

Description: Flag to skip service principal AAD check.

Type: `bool`

Default: `false`

## Outputs

The following outputs are exported:

### <a name="output_role_assignment"></a> [role\_assignment](#output\_role\_assignment)

Description: Value of the role assignment which was created.

## Resources

The following resources are used by this module:

- [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)

## Usage

> For more detailed examples navigate to `examples` folder of this repository.

Module was also published via Terraform Registry and can be used as a module from the registry.

```hcl
module "example" {
  source  = "wanted-cloud/role-assignment/azure"
  version = "x.y.z"
}
```

### Basic usage example

The minimal usage for the module is as follows:

```hcl
module "template" {
    source = "../.."

    # Name is optional
    name = "00000000-0000-0000-0000-000000000000"
    scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg"
    role_definition_name = "Reader"
    principal_id = "00000000-0000-0000-0000-000000000000"
}
```
## Contributing

_Contributions are welcomed and must follow [Code of Conduct](https://github.com/wanted-cloud/.github?tab=coc-ov-file) and common [Contributions guidelines](https://github.com/wanted-cloud/.github/blob/main/docs/CONTRIBUTING.md)._

> If you'd like to report security issue please follow [security guidelines](https://github.com/wanted-cloud/.github?tab=security-ov-file).
---
<sup><sub>_2025 &copy; All rights reserved - WANTED.solutions s.r.o._</sub></sup>
<!-- END_TF_DOCS -->