### Public subnets01

resource "aws_subnet" "public_subnet-01" {
  vpc_id     = aws_vpc.first_vpc.id
  cidr_block = var.subnet_cidr_block_01

  tags = {
    Name = "public_subnet_01"
    Env = var.env
    Project = "VPC"
  }
}
### Public subnets02
resource "aws_subnet" "public_subnet-02" {
  vpc_id     = aws_vpc.first_vpc.id
  cidr_block = var.subnet_cidr_block02

  tags = {
    Name = "public_subnet_02"
    Env = var.env
    Project = "VPC"
  }
}

### Public subnets03
resource "aws_subnet" "public_subnet-03" {
  vpc_id     = aws_vpc.first_vpc.id
  cidr_block = var.subnet_cidr_block03

  tags = {
    Name = "public_subnet_03"
    Env = var.env
    Project = "VPC"
  }
}
