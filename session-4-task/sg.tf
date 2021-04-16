// # security group
// resource "aws_security_group" "wordpress_sg" {
//   name        = var.sg_name
//   vpc_id      = var.vpc_id   
// }

// # ingress rule tcp 
// resource "aws_security_group_rule" "ingress_tcp" {
//   count       = length(var.tcp_ports)
//   type        = "ingress"
//   protocol    = "tcp"
//   cidr_blocks = var.tcp_cidr_block
//   from_port   = element(var.tcp_ports, count.index)
//   to_port     = element(var.tcp_ports, count.index)
//   security_group_id = aws_security_group.wordpress_sg.id
// }

// # ingress rule ssh
// resource "aws_security_group_rule" "ingress_ssh" {
//   type        = "ingress"
//   protocol    = "tcp"
//   cidr_blocks = var.ssh_cidr_block
//   from_port   = 22
//   to_port     = 22
//   security_group_id = aws_security_group.wordpress_sg.id
// }
//   tags = {
//     Name = 
//   }
// }
