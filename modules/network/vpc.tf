#1. VPC
resource "aws_vpc" "vpc_test" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags = {
    Name  = "vpc-${var.env}"
    Stage = "${var.env}"
  }
}

data "aws_availability_zones" "available" {}
