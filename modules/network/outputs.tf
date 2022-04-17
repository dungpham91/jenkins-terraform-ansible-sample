#modules/network-layer/variables.tf
# VPC
output "vpc_id_test" {
  value = "${aws_vpc.vpc_test.id}"
}

# Subnet
output "subnet_id_test" {
  value = "${aws_subnet.subnet_test.*.id}"
}
