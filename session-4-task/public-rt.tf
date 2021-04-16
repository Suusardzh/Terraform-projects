### public_route_table
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.first_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public_Route_Table"
    Env = var.env
    Project = "VPC"
  }
}

###aws_public_route_table_subnet_association

resource "aws_route_table_association" "public_subnet-01" {
  subnet_id      = aws_subnet.public_subnet-01.id
  route_table_id = aws_route_table.pub_rt.id
}
resource "aws_route_table_association" "public_subnet-02" {
  subnet_id      = aws_subnet.public_subnet-02.id
  route_table_id = aws_route_table.pub_rt.id
}
resource "aws_route_table_association" "public_subnet-03" {
  subnet_id      = aws_subnet.public_subnet-03.id
  route_table_id = aws_route_table.pub_rt.id
}