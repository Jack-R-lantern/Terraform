resource "aws_vpc" "fotk_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
	  Name = "${var.name}-${var.profile}-vpc"
  }
}

