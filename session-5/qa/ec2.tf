resource "aws_instance" "first_ec2" {
  ami                    = data.aws_ami.amazon_linux_2.image_id   ### data source reference
  instance_type          = var.instance_type   ###variable
  vpc_security_group_ids = [aws_security_group.first_sg.id] ### resource reference
  key_name               = aws_key_pair.first_key.key_name  ###resource reference
  user_data              = data.template_file.user_data.rendered ###function

  tags = {
    Name = "${var.env}-Instance"
    Name2 = format("Instance-%s" , var.env)   ####format
  }
}

resource "aws_key_pair" "first_key" {
  key_name   = "Terraform-Server2"
  public_key = file("~/.ssh/id_rsa.pub")
}