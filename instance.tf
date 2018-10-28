resource "aws_instance" "instance1" {
  ami                    = " ami-0c21ae4a3bd190229"
  instance_key           = "t2.micro"
  key_name               = "project1"
  subnet_id              = "${aws_subnet.artemis-public.id}"
  vpc_security_group_ids = ["${aws_security_group.artemis.id}"]

  user_data = "${file("apache.sh")}"
  associate_public_ip_address = "true"
}
