terraform {
  backend "s3" {
	  bucket = "fotk-tfstate"
	  key = "VPC/terraform.tfstate"
	  region = "ap-northeast-2"
	  encrypt = true
	  dynamodb_table = "terraform_lock"
  }
}

provider "aws" {
  region = "ap-northeast-2"
}