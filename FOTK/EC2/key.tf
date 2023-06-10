resource "aws_key_pair" "aws_key" {
  key_name = "key_test"
  public_key = file("~/.ssh/web_admin.pub")
}
