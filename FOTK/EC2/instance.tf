resource "aws_instance" "fotk_ec2_bastion" {
  ami = "ami-007b7745d0725de95"
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc.outputs.fotk_public_a_id
  vpc_security_group_ids = [ data.terraform_remote_state.vpc.outputs.fotk_sg_bastion ]
  key_name = aws_key_pair.aws_key.key_name
  count = 1
  tags = {
	  Name = "fotk_bastion_host"
  }
  associate_public_ip_address = true
}

resource "aws_instance" "fotk_ec2_public_a" {
  ami = data.aws_ami.fotk_asg_img.id
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc.outputs.fotk_public_a_id
  vpc_security_group_ids = [ data.terraform_remote_state.vpc.outputs.fotk_sg_public ]
  key_name = aws_key_pair.aws_key.key_name
  count = 1
  tags = {
	  Name = "fotk_public_server_a"
  }
  associate_public_ip_address = true
}

resource "aws_instance" "fotk_ec2_public_c" {
  ami = data.aws_ami.fotk_asg_img.id
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc.outputs.fotk_public_c_id
  vpc_security_group_ids = [ data.terraform_remote_state.vpc.outputs.fotk_sg_public ]
  key_name = aws_key_pair.aws_key.key_name
  count = 1
  tags = {
	  Name = "fotk_public_server_c"
  }
  associate_public_ip_address = true
}

resource "aws_instance" "fotk_ec2_private" {
  ami = "ami-007b7745d0725de95"
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.vpc.outputs.fotk_private_id
  vpc_security_group_ids = [ data.terraform_remote_state.vpc.outputs.fotk_sg_private ]
  key_name = aws_key_pair.aws_key.key_name
  count = 1
  tags = {
	  Name = "fotk_private_server"
  }
}