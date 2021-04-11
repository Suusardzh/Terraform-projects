resource "aws_instance" "first_ec2" {
  ami                    = ""
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.first_sg.id]
  key_name               = aws_key_pair.first_key.name
  user_data              = file("user_data.sh")

  tags = {
    Name = var.env
  }
}

resource "aws_key_pair" "first_key" {
  key_name   = "Terraform-Server"
  public_key = file("~/.ssh/id_rsa.pub")
}