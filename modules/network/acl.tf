resource "aws_network_acl" "acl_test" {
  vpc_id     = "${aws_vpc.vpc_test.id}"
  subnet_ids = "${aws_subnet.subnet_test.*.id}"

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name  = "acl-${var.env}"
    Stage = "${var.env}"
  }
}
