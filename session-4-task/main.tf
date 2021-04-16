### vpc 
resource "aws_vpc" "first_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "my_vpc"
    Env = var.env
    Project = "VPC"
  }
}


###Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.first_vpc.id

  tags = {
    Name = "Internet_gateway"
    Env = var.env
    Project = "VPC"
  }
}
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

### private_route_table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.first_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

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