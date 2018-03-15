 resource "aws_vpc" "example" {
 cidr_block = "172.168.0.0/28"
 enable_dns_hostnames = true
  }
 
 resource "aws_subnet" "example" {
 vpc_id = "${aws_vpc.example.id}"
 cidr_block = "172.168.0.0/28"
 map_public_ip_on_launch = true
 
   }
   