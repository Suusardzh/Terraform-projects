locals {
    tags = {
        Name = "${var.env}-vpc-suusar"
        Environment = var.env
    }
}