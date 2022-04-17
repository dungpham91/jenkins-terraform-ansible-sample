provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "/home/dungpham/.aws/credentials"
}

#-----------network module-----------------
module "network" {
  source       = "./modules/network"
  env          = "${var.env}"
  region       = "${var.region}"
  vpc_cidr     = "${var.vpc_cidr}"
  subnet_cidrs = "${var.subnet_cidrs}"
}

#-----------ec2 module-------------
module "ec2" {
  source = "./modules/ec2"
  env    = "${var.env}"
  region = "${var.region}"

  instance_type = "${var.instance_type}"
  volume_size   = "${var.volume_size}"

  vpc_id_test    = "${module.network.vpc_id_test}"
  subnet_id_test = "${module.network.subnet_id_test}"
}
