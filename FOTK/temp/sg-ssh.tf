# resource "aws_security_group" "ssh" {
# 	name = "allow_ssh_from_all"
# 	description = "Allow SSH port from all"
# 	vpc_id = aws_vpc.tf-vpc.id
# 	ingress {
# 		from_port = 22
# 		to_port = 22
# 		protocol = "tcp"
# 		cidr_blocks = ["0.0.0.0/0"]
# 	}
# 	egress {
# 	  cidr_blocks = ["0.0.0.0/0"]
# 	  from_port = 0
# 	  to_port = 0
# 	  protocol = "-1"
# 	}

# 	tags = {
# 	  Name = "allow_ssh"
# 	}
# }
