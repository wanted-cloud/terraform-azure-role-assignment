module "template" {
    source = "../.."

    # Name is optional
    name = "00000000-0000-0000-0000-000000000000"
    scope = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg"
    role_definition_name = "Reader"
    principal_id = "00000000-0000-0000-0000-000000000000"
}