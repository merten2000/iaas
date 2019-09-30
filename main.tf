
module "vpc" {
  source = "./vpc"
}


module "testserver" {
  source = "./testserver"
  servername = "test002"
  count = 1
  subnet = "${module.vpc.subnet}"
}



