module "dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "twx-xxxx@xxxx.com"
    AccountName               = "Dev"
    ManagedOrganizationalUnit = "App"
    SSOUserEmail              = "xxxxxxx@xxxxx.com"
    SSOUserFirstName          = "xxxxxx"
    SSOUserLastName           = "R"
  }

  account_tags = {
    "Provisioned"     = "Terraform"
    "CostCenter"      = "prod"
    "Project"         = "Pick-Winners"
    "Team"            = "ApplicationTeam"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "app"
}

module "Test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "twx-xxxxx@xxxx.com"
    AccountName               = "Test"
    ManagedOrganizationalUnit = "audit"
    SSOUserEmail              = "xxxxx@xxxxxx.com"
    SSOUserFirstName          = "xxxxxx"
    SSOUserLastName           = "R"
  }

  account_tags = {
     "Environment"     = "Ops"
     "CostCenter"      = "Ops"
     "Project"         = "Test-Poc"
     "Team"            = "Devops"
     "Owner"           = "xxxxx@xxxx.com"
  }

 change_management_parameters = {
  change_requested_by = "DevOps Team"
  change_reason       = "Create Test account for security testing"
}

  custom_fields = {
    group = "Ops"
  }

  account_customizations_name = "security"
}
module "prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "twx-xxxx@xxxx.com"
    AccountName               = "prod"
    ManagedOrganizationalUnit = "App"
    SSOUserEmail              = "xxxxxxx@xxxxx.com"
    SSOUserFirstName          = "xxxxxx"
    SSOUserLastName           = "R"
  }

  account_tags = {
     "CostCenter"      = "prod"
     "Project"         = "Pick-Winners"
     "Team"            = "ApplicationTeam"
  }

  change_management_parameters = {
    change_requested_by = "DevOps Team"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "app"
}
