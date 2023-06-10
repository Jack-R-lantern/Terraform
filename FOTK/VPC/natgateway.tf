resource "aws_nat_gateway" "fotk_nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id      = aws_subnet.fotk_public_a.id
  tags = {
         Name = "fotk_nat_gw"
  }
}
