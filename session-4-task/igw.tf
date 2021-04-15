###Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.first_vpc.id

  tags = {
    Name = "Internet_gateway"
    Env = var.env
    Project = "VPC"
  }
}

###aws_public_route_table_internet_association
resource "aws_route_table_association" "igw" {
  gateway_id     = aws_internet_gateway.igw.id
  route_table_id = aws_route_table.public.id
}