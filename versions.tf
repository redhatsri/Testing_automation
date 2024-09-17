provider "aws" {
  region = var.region

  assume_role {
    role_arn     = var.assume_role_arn
    external_id  = var.assume_role_external_id
    session_name = "terraform"
  }
}

default_tags {
  tags = {
    Account               = "your_account"
    Creator               = "terraform"
    ResourceCostCenter    = ".66002000"
    ResourceOwner         = "eec-aws-automotive-velocity-sand"
    ResourceBusinessUnit  = "Automotive"
    ResourceEmail         = "autoinfrastructure@experian.com"
    Environment           = "sbx"
    Product               = "your_product"
    Project               = "your_project"
    IAR                   = "your_iar"
    AppID                 = "AMP"
    ProjectID             = "PRJ0168817"
    IARID                 = "IAR01854"
    CostCenterID          = "22390"
  }
}
