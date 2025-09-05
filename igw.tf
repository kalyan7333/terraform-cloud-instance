resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.kalyan_vpc.id

  tags = {
    Name = "IGW"
  }
}
