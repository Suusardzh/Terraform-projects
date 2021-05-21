resource "aws_instance" "first" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "suusars-mackey"
  tags = local.tags
}