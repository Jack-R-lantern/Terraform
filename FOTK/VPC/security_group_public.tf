resource "aws_security_group" "public_server" {
	name = "public_server_security_group"
	description = "public_server_rule"
	vpc_id = aws_vpc.fotk_vpc.id
	tags = {
	  Name = "public_server"
	}
}
###################
#  ingress_rule   #
###################

resource "aws_security_group_rule" "public_server_ingress_ssh" {
	type = "ingress"
	from_port = 22
	to_port = 22
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.public_server.id
}

resource "aws_security_group_rule" "public_server_ingress_http" {
	type = "ingress"
	from_port = 80
	to_port = 80
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.public_server.id
}

resource "aws_security_group_rule" "public_server_ingress_https" {
	type = "ingress"
	from_port = 443
	to_port = 443
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.public_server.id
}

###################
#   egress_rule   #
###################

resource "aws_security_group_rule" "public_server_egress_http" {
	type = "egress"
	from_port = 80
	to_port = 80
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.public_server.id
}

resource "aws_security_group_rule" "public_server_egress_https" {
	type = "egress"
	from_port = 443
	to_port = 443
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.public_server.id
}