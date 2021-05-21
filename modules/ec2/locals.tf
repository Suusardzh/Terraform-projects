locals {
    tags = {
        Name = "${var.env}-instance"
        Environment = var.env
    }
}