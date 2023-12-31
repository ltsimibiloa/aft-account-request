module "account_request_github_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ltsimibiloa+github02@yext.com"
    AccountName  = "account-github-02"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "ltsimibiloa-test-AFT"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "ltsimibiloa+github02@yext.com"
    SSOUserFirstName = "ltsimibiloa"
    SSOUserLastName  = "github02"
  }

  account_tags = {
    Project     = "githubAFT"
    Owner       = "ltsimibiloa+github01@yext.com"
    CostCenter  = "LabCenter"
    Vended      = "true"
    Environment = "test"
    Division    = "ITOPS"
    BUCode      = "ABC003"
    DivCode     = 102
  }

  change_management_parameters = {
    change_requested_by = "ltsimibiloa github02"
    change_reason       = "testing the account vending process with github and AFT"
  }

  custom_fields = {
        alternate_contact = jsonencode(
      {
        "billing"= {
          "email-address" = "ltsimibiloa+billing01@yext.com",
          "name"          = "Account Receiveable",
          "phone-number"  = "+11234567890",
          "title"         = "ltsimibiloa Billing Department"
        },
        "operations"= {
          "email-address" = "ltsimibiloa+ops@yext.com",
          "name"          = "Operations 24/7",
          "phone-number"  = "+11234567890",
          "title"         = "DevOps Team"
        },
        "security"= {
          "email-address" = "ltsimibiloa+soc@yext.com",
          "name"          = "Security Ops Center",
          "phone-number"  = "+11234567890",
          "title"         = "SOC Team"
        }
      }
    )
    custom1 = "a"
    custom2 = "b"
    custom3 = "c"
  }

  account_customizations_name = "sandbox-customizations"
}
