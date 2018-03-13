provider "aws" {
  access_key = "${var.access_key_aws}"
  secret_key = "${var.secret_key_aws}"
  region     = "eu-west-3"
}