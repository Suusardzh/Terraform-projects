### private_route_table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.first_vpc.id


  tags = {
    Name = "Private_Route_Table"
    Env = var.env
    Project = "VPC"
  }
}

###aws_private_route_table_subnet_association

resource "aws_route_table_association" "private_subnet-01" {
  subnet_id      = aws_subnet.private_subnet-01.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private_subnet-02" {
  subnet_id      = aws_subnet.private_subnet-02.id
  route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private_subnet-03" {
  subnet_id      = aws_subnet.private_subnet-03.id
  route_table_id = aws_route_table.private.id
}