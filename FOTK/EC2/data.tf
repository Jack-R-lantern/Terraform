data "terraform_remote_state" "vpc" {
	backend = "s3"
	config = {
	  bucket = "fotk-tfstate"
	  key = "VPC/terraform.tfstate"
	  region = "ap-northeast-2"
	  encrypt = true
	  dynamodb_table = "terraform_lock"
	}
}

data "aws_ami" "fotk_asg_img" {
	owners = [data.terraform_remote_state.vpc.outputs.fotk_owner_id]
}