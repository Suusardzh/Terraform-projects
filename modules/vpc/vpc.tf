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