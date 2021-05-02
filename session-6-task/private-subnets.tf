### Private subnets01

resource "aws_subnet" "private_subnet-01" {
  vpc_id     = data.aws_vpc.custom_vpc.id
  cidr_block = var.private_subnet_cidr_block_01

  tags = {
    Name    = "private_subnet-01"
    Env     = var.env
    Project = "VPC"
  }
}
### Private subnets02
resource "aws_subnet" "private_subnet-02" {
  vpc_id     = data.aws_vpc.custom_vpc.id
  cidr_block = var.private_subnet_cidr_block_02

  tags = {
    Name    = "private_subnet-02"
    Env     = var.env
    Project = "VPC"
  }
}

### Private subnets03
resource "aws_subnet" "private_subnet-03" {
  vpc_id     = data.aws_vpc.custom_vpc.id
  cidr_block = var.private_subnet_cidr_block_03

  tags = {
    Name    = "private_subnet-03"
    Env     = var.env
    Project = "VPC"
  }
}
