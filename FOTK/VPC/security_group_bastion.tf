resource "aws_security_group" "bastion" {
	name = "bastion_security_group"
	description = "bastion_ssh_tunneling"
	vpc_id = aws_vpc.fotk_vpc.id
	tags = {
	  Name = "bastion"
	}
}

###################
#  ingress_rule   #
###################

resource "aws_security_group_rule" "ssh_tunneling_ingress" {
	type = "ingress"
	from_port = 22
	to_port = 22
	protocol = "tcp"
	cidr_blocks = ["0.0.0.0/0"]
	security_group_id = aws_security_group.bastion.id
}

###################
#   egress_rule   #
###################

resource "aws_security_group_rule" "ssh_tunneling_egress" {
	type = "egress"
	from_port = 22
	to_port = 22
	protocol = "tcp"
	cidr_blocks = [aws_subnet.fotk_private.cidr_block]
	security_group_id = aws_security_group.bastion.id
}