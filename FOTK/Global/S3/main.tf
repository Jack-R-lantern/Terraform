provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_s3_bucket" "fotk_s3" {
  bucket = "${var.bucket_name}-tfstate"
  force_destroy = true
  versioning {
	enabled = true
  }
}

resource "aws_dynamodb_table" "fotk_dynamo" {
  hash_key = "LockID"
  name = "terraform_lock"
  read_capacity = 1
  write_capacity = 1

  attribute {
	  name = "LockID"
	  type = "S"
  }
}