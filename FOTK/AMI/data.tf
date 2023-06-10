data "terraform_remote_state" "vpc" {
	backend = "s3"
	config = {
	  bucket = "fotk-tfstate"
	  key = "EC2/terraform.tfstate"
	  region = "ap-northeast-2"
	  encrypt = true
	  dynamodb_table = "terraform_lock"
	}
}