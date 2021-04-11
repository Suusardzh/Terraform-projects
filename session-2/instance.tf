resource "aws_instance" "first" {
  ami           = "ami-0518bb0e75d3619ca"
  instance_type = "t2.micro"
  key_name      = "suusars-mackey"
  subnet_id     = "subnet-c7f2e98c"
  user_data     = file("script/simple.sh")

  tags = {
    Name = "Web-Instance"
  }
}