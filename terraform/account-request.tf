module "account_request_github_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ltsimibiloa+github01@yext.com"
    AccountName  = "account-github-01-renamed-attempt01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "ltsimibiloa-test-AFT"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "ltsimibiloa+github01@yext.com"
    SSOUserFirstName = "ltsimibiloa"
    SSOUserLastName  = "github01"
  }

  account_tags = {
  }

  change_management_parameters = {
    change_requested_by = "ltsimibiloa github01"
    change_reason       = "testing the account vending process with github and AFT"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "sandbox-customizations"
}
