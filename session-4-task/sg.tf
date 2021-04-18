# security group for wordpress
resource "aws_security_group" "wordpress" {
  name   = "${var.env}-sg"
  vpc_id = aws_vpc.first_vpc.id

  tags = {
    Name    = "${var.env}-wordpress_sg"
    Env     = var.env
    Project = var.project
  }
}
# security group for wordpress-database

resource "aws_security_group" "wordpress_database" {
  name   = "${var.env}-wd_sg"
  vpc_id = aws_vpc.first_vpc.id

  tags = {
    Name    = "${var.env}-wordpress_database_sg"
    Env     = var.env
    Project = var.project
  }
}

# ingress rule tcp 
resource "aws_security_group_rule" "ingress_http" {
  type              = "ingress"
  protocol          = "tcp"
  cidr_blocks       = [var.database_ip]
  from_port         = 22
  to_port           = 22
  security_group_id = aws_security_group.wordpress_database.id
}

# ingress rule tcp 
resource "aws_security_group_rule" "ingress_http" {
  type              = "ingress"
  protocol          = "tcp"
  cidr_blocks       = [var.tcp_cidr_block]
  from_port         = 80
  to_port           = 80
  security_group_id = aws_security_group.wordpress.id
}


# ingress rule ssh
resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress"
  protocol          = "tcp"
  cidr_blocks       = [var.ssh_cidr_block]
  from_port         = 22
  to_port           = 22
  security_group_id = aws_security_group.wordpress.id
}


resource "aws_security_group_rule" "egress_http" {
  type              = "egress"
  protocol          = "tcp"
  cidr_blocks       = [var.egress_tcp_cidr_block]
  from_port         = 0
  to_port           = 0
  security_group_id = aws_security_group.wordpress.id
}

