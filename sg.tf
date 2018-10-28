resource "aws_security_group" "artemis" {
  name        = "artemis"
  description = "Artemis security Group"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port  = 0
    to_port    = 0
    prtocol    = -1
    cidr_block = ["0.0.0.0/0"]
  }

  egress {
    from_port  = 0
    to_port    = 0
    prtocol    = -1
    cidr_block = ["0.0.0.0/0"]
  }
}
