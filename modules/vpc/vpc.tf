## Vpc 
resource "aws_vpc" "first_vpc" {
  cidr_block = var.cidr_block

  tags = local.tags

}

## aws igw
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.first_vpc.id

  tags = local.tags
}
## Naming convention: cloud provider - project name - tier - env
## example: aws-wordpress-frontend-dev

## public subnet
resource "aws_subnet" "public_subnet-01" {
  vpc_id     = aws_vpc.first_vpc.id
  cidr_block = var.public_subnet_cidr_block_01

  tags = local.tags
}


### public_route_table
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.first_vpc.id
  route {
    cidr_block = var.rt_cidr_block
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = local.tags
}

###aws_public_route_table_subnet_association

resource "aws_route_table_association" "public_subnet-01" {
  subnet_id      = aws_subnet.public_subnet-01.id
  route_table_id = aws_route_table.pub_rt.id
}

### Private subnets

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.first_vpc.id
  cidr_block = var.private_subnet_cidr_block

  tags = local.tags
}

### natgateway eip
resource "aws_eip" "nat-gw-eip" {
  vpc = true

  tags = local.tags
}


### natgateway

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat-gw-eip.id
  subnet_id     = aws_subnet.public_subnet-01.id

  tags = local.tags
}

### private_route_table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.first_vpc.id

  route {
    cidr_block     = var.pr_rt_cidr_block
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = local.tags
}

###aws_private_route_table_subnet_association

resource "aws_route_table_association" "private_subnet-01" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private.id
}