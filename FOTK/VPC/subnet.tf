resource "aws_subnet" "fotk_public_a" {
  vpc_id = aws_vpc.fotk_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "fotk_public_a"
  }
}

resource "aws_subnet" "fotk_public_c" {
  vpc_id = aws_vpc.fotk_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    Name = "fotk_public_c"
  }
}

resource "aws_subnet" "fotk_private" {
  vpc_id = aws_vpc.fotk_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "fotk_private"
  }
}

resource "aws_subnet" "fotk_secure" {
  vpc_id = aws_vpc.fotk_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "fotk_secure"
  }
}
