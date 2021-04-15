### vpc 
resource "aws_vpc" "first_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "my_vpc"
    Env = var.env
    Project = "VPC"
  }
}
 




