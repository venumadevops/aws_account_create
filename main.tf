provider "aws" {
  region = "${var.aws_region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}


//  Create new acccount
module "new_account" {
  source          = "./modules/aws_organizations_account"

  account_name   =  "${var.account_name}"
  owner_email_address = "${var.owner_email_address}"
}
