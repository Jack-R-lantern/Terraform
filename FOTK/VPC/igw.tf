resource "aws_internet_gateway" "fotk_igw" {
  vpc_id = aws_vpc.fotk_vpc.id
  tags = {
    Name = "tf-basic-igw"
  }
}
