output "my_key_name" {
  value = aws_key_pair.aws_key.key_name
}

output "ec2_for_ami" {
  value = aws_instance.fotk_ec2_public_a[0].id
}