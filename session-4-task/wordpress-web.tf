resource "aws_instance" "wordpress-web" {
  ami                    = data.aws_ami.amazon_linux_2.image_id   ### data source reference
  instance_type          = var.instance_type   ###variable
  vpc_security_group_ids     = [aws_security_group.wordpress.id] ### resource reference
  key_name               = aws_key_pair.terraform_key.key_name  ###resource reference
  user_data              = data.template_file.user_data.rendered ###function
  subnet_id              = aws_subnet.public_subnet-01.id

  tags = {
    Name = "${var.env}-Instance"
    Env =   var.env
    Project = var.project
  }
}

resource "aws_key_pair" "terraform_key" {
  key_name   = "Terraform-Server-Key"
  public_key = file("~/.ssh/id_rsa.pub")
}