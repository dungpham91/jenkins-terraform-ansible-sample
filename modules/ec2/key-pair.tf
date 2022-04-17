resource "aws_key_pair" "keypair_test" {
  key_name   = "keypair-${var.env}"
  public_key = "${file("${path.root}/modules/ec2/keyfiles/id_rsa.pub")}"
}
