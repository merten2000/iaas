resource "aws_instance" "example" {
  count = 1
  ami = "ami-8ee056f3"
  instance_type = "t2.small"
  subnet_id =  "${aws_subnet.example.id}"
  tags {
    Name = "example-${count.index}"
  }
}