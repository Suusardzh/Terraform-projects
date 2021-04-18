resource "aws_instance" "wordpress_database" {
  ami                    = data.aws_ami.amazon_linux_2.image_id  ### data source reference
  instance_type          = var.instance_type                     ###variable
  vpc_security_group_ids = [aws_security_group.wordpress.id]     ### resource reference
  key_name               = "Terraform-Server-Key"   ###resource reference
  user_data              = data.template_file.sql-userdata.rendered ###function
  subnet_id              = aws_subnet.private_subnet-01.id
  tags = {
    Name    = "${var.env}-Instance"
    Env     = var.env
    Project = var.project
  }
}
