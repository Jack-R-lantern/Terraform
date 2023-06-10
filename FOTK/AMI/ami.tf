resource "aws_ami_from_instance" "fotk_public_image" {
	name = "fotk_asg_ami"
	source_instance_id = data.terraform_remote_state.vpc.outputs.ec2_for_ami
	tags = {
	  "Name" = "fotk_asg_ami"
	}
}