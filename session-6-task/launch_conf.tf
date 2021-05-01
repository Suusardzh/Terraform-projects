resource "aws_launch_configuration" "webserver_lc" {
    name            =  "${var.env}-websever_lc"
    image_id        = data.aws_ami.amazon_linux2.id
    instance_type   = var.instance_type
    user_data       = data.template_file.webserver.rendered
}

resource "aws_security_group" "webserver_sh" {
    name         =  "${var.env}-webserver_sg"
    description  =  "Allow HTTP traffic"
    vpc_id       =  data.aws_vpc.first_vpc.id
}

resource "aws_security_group_rule" "http_from_lb" {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.webserver_sg.id

}

resource "aws_security_group_rule" "webserver_egress" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.webserver_sg.id

}
