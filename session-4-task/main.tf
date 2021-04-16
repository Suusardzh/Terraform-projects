### vpc 
resource "aws_vpc" "first_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "my_vpc"
    Env = var.env
    Project = "VPC"
  }
}
 

### natgateway eip
resource "aws_eip" "nat-gw-eip" {
  vpc      = true

  tags = {
    Name = "nat eip"
    Env = var.env
    Project = "VPC"
  }
}


### natgateway

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat-gw-eip.id
  subnet_id     = aws_subnet.public_subnet-01.id

  tags = {
    Name = "nat_gw"
    Env = var.env
    Project = "VPC"
  }
}

