resource "aws_vpc" "kalyan_vpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_hostnames = "true"

  tags = {
    Name = "terraform_vpc"
  }
}
