/*
This configuration will create  EC2 instances
on AWS provider
*/
resource "aws_instance" "web" {
  ami                         = "ami-020cba7c55df1f615" #Ubuntu 20.04 LTS Free Tier Image
  instance_type               = "t3.small"
  key_name                    = "terraform_demo"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.kalyan_sg.id]
  user_data                   = file("nginx-install.sh")
  availability_zone           = "us-east-1a"
  associate_public_ip_address = true

  tags = {
    "Name" = "Webapp-terraform"
  }
}
