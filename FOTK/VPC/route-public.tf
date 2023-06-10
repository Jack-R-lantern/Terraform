resource "aws_route_table" "fotk_public_route" {
  vpc_id = aws_vpc.fotk_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.fotk_igw.id
 }
  tags = {
    Name = "fotk_public_route"
  }
}

resource "aws_route_table_association" "fotk_public_route_a" {
  subnet_id      = aws_subnet.fotk_public_a.id
  route_table_id = aws_route_table.fotk_public_route.id
}

resource "aws_route_table_association" "fotk_public_route_c" {
  subnet_id      = aws_subnet.fotk_public_c.id
  route_table_id = aws_route_table.fotk_public_route.id
}