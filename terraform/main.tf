module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "twx-kartish5@ryvalx.com"
    AccountName               = "Dev"
    ManagedOrganizationalUnit = "App"
    SSOUserEmail              = "kartish@ryvalx.com"
    SSOUserFirstName          = "kartish"
    SSOUserLastName           = "R"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "App"
}

# module "Test_Acc" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "twx-kartish4@ryvalx.com"
#     AccountName               = "Test"
#     ManagedOrganizationalUnit = "Security"
#     SSOUserEmail              = "kartish@ryvalx.com"
#     SSOUserFirstName          = "kartish"
#     SSOUserLastName           = "R"
#   }

#   account_tags = {
#     "Learn Tutorial" = "AFT"
#   }

#   change_management_parameters = {
#     change_requested_by = "HashiCorp Learn"
#     change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "Security"
# }
