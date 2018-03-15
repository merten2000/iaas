
module "vpc" {
  source = "./vpc"
}


module "testserver" {
  source = "./testserver"
  servername = "test001"
  count = 1
  subnet = "${module.vpc.subnet}"
}



