output "aws_s3_bucket_name" {
	value = aws_s3_bucket.fotk_s3.bucket
}

output "aws_dynamodb_name" {
  value = aws_dynamodb_table.fotk_dynamo.name
}