### Public subnets01

resource "aws_subnet" "public_subnet-01" {
  vpc_id     = data.aws_vpc.custom_vpc.id
  cidr_block = var.public_subnet_cidr_block_01

  tags = {
    Name    = "${var.env}-pub_subnet1"
    Env     = var.env
    Project = var.project
  }
}
### Public subnets02
resource "aws_subnet" "public_subnet-02" {
  vpc_id     = data.aws_vpc.custom_vpc.id
  cidr_block = var.public_subnet_cidr_block_02

  tags = {
    Name    = "${var.env}-pub_subnet2"
    Env     = var.env
    Project = var.project
  }
}

### Public subnets03
resource "aws_subnet" "public_subnet-03" {
  vpc_id     = data.aws_vpc.custom_vpc.id
  cidr_block = var.public_subnet_cidr_block_03

  tags = {
    Name    = "${var.env}-pub_subnet3"
    Env     = var.env
    Project = var.project
  }
}
