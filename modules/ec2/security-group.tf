#1. SG for EC2
resource "aws_security_group" "ec2_sg_test" {
  name        = "security-group-ec2-${var.env}"
  vpc_id      = "${var.vpc_id_test}"
  description = "Allow all"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "security-group-ec2-${var.env}"
    Type  = "test"
    Stage = "${var.env}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
