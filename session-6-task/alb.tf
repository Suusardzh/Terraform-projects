resource "aws_lb" "webserver_alb" {
  name               = "${var.env}-webserver-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.public_subnet-01.id, aws_subnet.public_subnet-02.id ]
}


resource "aws_lb_target_group" "webserver_tg" {
  name     = "${var.env}-webserver-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.first_vpc.id
}

 

resource "aws_lb_listener" "webserver_listener" {
  load_balancer_arn = aws_lb.webserver_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.webserver_tg.arn
  }
}


resource "aws_security_group" "alb_sg"{
    name = "${var.env}-alb_sg"
    description = "Allow HTTP traffic"
    vpc_id   = aws_vpc.first_vpc.id
}   ##vpc must be here unless default one

resource "aws_security_group_rule" "http_igress" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.alb_sg.id

}


resource "aws_security_group_rule" "alb_egress" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.alb_sg.id

}