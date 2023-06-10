provider "aws" {
  region = "ap-northeast-2"
}

module "stg" {
	source = "./stg"
}