locals {
    tags = {
        Name = "${var.env}-s3-suusar"
        Environment = var.env
    }
}