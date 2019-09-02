resource "aws_organizations_account" "account" {
  name  = "${var.account_name}"
  email = "${var.owner_email_address}"
}
