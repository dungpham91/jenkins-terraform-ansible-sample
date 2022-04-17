#modules/network-layer/variables.tf
# VPC
output "ec2_id_test" {
  value = "${module.ec2.ec2_id_test}"
}

# Subnet
output "ec2_public_ip" {
  value = "${module.ec2.ec2_public_ip}"
}

#modules/network-layer/variables.tf
# VPC
output "vpc_id_test" {
  value = "${module.network.vpc_id_test}"
}

# Subnet
output "subnet_id_test" {
  value = "${module.network.subnet_id_test}"
}
