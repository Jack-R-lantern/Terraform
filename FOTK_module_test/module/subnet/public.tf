resource "aws_subnet" "fotk_public" {
  vpc_id = aws_vpc.fotk_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "fotk_public"
  }
}