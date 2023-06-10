resource "aws_security_group" "private_server" {
	name = "private_server_security_group"
	description = "private_server_private_server"
	vpc_id = aws_vpc.fotk_vpc.id
	tags = {
	  Name = "private_server"
	}
}

###################
#  ingress_rule   #
###################

resource "aws_security_group_rule" "private_server_ingress" {
	type = "ingress"
	from_port = 22
	to_port = 22
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.private_server.id
}

###################
#   egress_rule   #
###################

resource "aws_security_group_rule" "private_server_egress_http" {
	type = "egress"
	from_port = 80
	to_port = 80
	protocol = "tcp"
	cidr_blocks = [aws_subnet.fotk_private.cidr_block]
	security_group_id = aws_security_group.private_server.id
}

resource "aws_security_group_rule" "private_server_egress_https" {
	type = "egress"
	from_port = 443
	to_port = 443
	protocol = "tcp"
	cidr_blocks = [aws_subnet.fotk_private.cidr_block]
	security_group_id = aws_security_group.private_server.id
}