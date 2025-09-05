resource "aws_security_group" "kalyan_sg" {
  name        = "kalyan-sg"
  description = "Allow ssh and www from ingress"
  vpc_id      = aws_vpc.kalyan_vpc.id

}
