resource "aws_route_table" "fotk_private_route" {
  vpc_id = aws_vpc.fotk_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.fotk_nat_gw.id
 }
  tags = {
    Name = "fotk_private_route"
  }
}

resource "aws_route_table_association" "fotk_private_route_a" {
  subnet_id      = aws_subnet.fotk_private.id
  route_table_id = aws_route_table.fotk_private_route.id
}