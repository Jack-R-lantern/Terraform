resource "aws_subnet" "terraform_subnet_public_a" {
  vpc_id = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
	Name = "terraform-public-a"
  }
}

resource "aws_subnet" "terraform_subnet_public_c" {
  vpc_id = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
	Name = "terraform-public-c"
  }
}