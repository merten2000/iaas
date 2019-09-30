output "aws_keys" {
  value = "${var.access_key_aws}"
  sensitive = true
}

output "aws_secret" {
  value = "${var.secret_key_aws}"
}

module "vpc" {
  source = "./vpc"
}


module "testserver" {
  source = "./testserver"
  servername = "test002"
  count = 1
  subnet = "${module.vpc.subnet}"
}
  
  




