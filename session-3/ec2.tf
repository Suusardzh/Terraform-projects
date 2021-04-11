resource "aws_instance" "first_ec2" {
  ami                    = "ami-05d72852800cbf29e"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.first_sg.id]
  key_name               = "suusars-mac-key"
  user_data              = file("user_data.sh")

  tags = {
    Name = var.env
  }
}
