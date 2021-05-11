resource "aws_db_instance" "rds" {
  allocated_storage         = 10
  storage_type              = "gp2"
  engine                    = "mysql"
  engine_version            = "5.7"
  instance_class            = "db.t2.micro"
  identifier                = "${var.env}-instance"
  name                      = "wordpress"
  username                  = "admin"
  password                  = random_password.password.result
  skip_final_snapshot       = var.snapshot                                        #true
  final_snapshot_identifier = var.snapshot == true ? null : "${var.env}-snapshot" # we don't need this identifier
  vpc_security_group_ids    = [aws_security_group.rds_sg.id]
  publicly_accessible       = var.env == "dev" ? true : false
  tags                      = local.common_tags

}

resource "null_resource" "tables" {
  provisioner "local-exec" {
    command = <<-EOF
                mysql -h "${aws_db_instance.rds.address}" -u "${aws_db_instance.rds.username}" < "db.sql"
            EOF
    environment = {
      MYSQL_PWD = random_password.password.result
    }
  }
}


resource "aws_security_group" "rds_sg" {
  name        = "${var.env}-rds_sg"
  description = "Allow HTTP traffic"
} ##vpc must be here unless default one

resource "aws_security_group_rule" "http_from_lb" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  self              = true
  security_group_id = aws_security_group.rds_sg.id

}

// resource "aws_security_group_rule" "db_sg_to_web_sg" {
//     type = "ingress"
//     from_port = 3306
//     to_port = 3306
//     protocol = "tcp"
//     // source_security_group_id = module.source_sg_for_rds_sg.webserver-sg_id
//     security_group_id = aws_security_group.rds_sg.id

// }


// resource "aws_security_group_rule" "rds_egress" {
//     type = "egress"
//     from_port = 0
//     to_port = 0
//     protocol = "-1"
//     cidr_blocks = ["0.0.0.0/0"]
//     security_group_id = aws_security_group.rds_sg.id

// }