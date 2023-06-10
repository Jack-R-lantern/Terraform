/*	vpc	*/
output "fotk_vpc_id" {
	value = aws_vpc.fotk_vpc.id
}

output "fotk_owner_id" {
	value = aws_vpc.fotk_vpc.owner_id
}

/*	subnet	*/
output "fotk_public_a_id" {
	value = aws_subnet.fotk_public_a.id
}

output "fotk_public_c_id" {
	value = aws_subnet.fotk_public_c.id
}

output "fotk_private_id" {
	value = aws_subnet.fotk_private.id
}

/*	az	*/
output "fotk_az" {
	value = [
		aws_subnet.fotk_public_a.availability_zone,
		aws_subnet.fotk_public_c.availability_zone
	]
}

/*	security group	*/
output "fotk_sg_public" {
	value = aws_security_group.public_server.id
}

output "fotk_sg_private" {
	value = aws_security_group.private_server.id
}

output "fotk_sg_bastion" {
	value = aws_security_group.bastion.id
}

output "fotk_sg_alb" {
	value = aws_security_group.alb.id
}