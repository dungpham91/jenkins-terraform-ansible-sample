#modules/network-layer/variables.tf
# VPC
output "ec2_id_test" {
  value = "${aws_instance.ec2_test.id}"
}

# Subnet
output "ec2_public_ip" {
  value = "${aws_instance.ec2_test.public_ip}"
}
