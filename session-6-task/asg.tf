resource "aws_autoscaling_group" "webserver-asg" {
  name                      = "${var.env}-webserver-asg"
  max_size                  = 2
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "EC2"
  desired_capacity          = 1
  force_delete              = true
  launch_configuration      = aws_launch_configuration.webserver_lc.name
  vpc_zone_identifier       = data.aws_subnet.public_subnet-01.id

}

resource "aws_autoscaling_attachment" "webserver_attachment" {
  autoscaling_group_name = aws_autoscaling_group.webserver-asg.id
  alb_target_group_arn   = aws_lb_target_group.webserver_tg.arn
}