### vpc 
resource "aws_vpc" "first_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name    = "${var.env}-VPC"
    Env     = var.env
    Project = var.project
  }
}


###Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.first_vpc.id

  tags = {
    Name    = "${var.env}-IWG"
    Env     = var.env
    Project = var.project
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
    Name    = "${var.env}-Public_RT"
    Env     = var.env
    Project = var.project
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
  vpc = true

  tags = {
    Name    = "${var.env}-nat_eip"
    Env     = var.env
    Project = var.project
  }
}


### natgateway

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat-gw-eip.id
  subnet_id     = aws_subnet.public_subnet-01.id

  tags = {
    Name    = "${var.env}-natgw"
    Env     = var.env
    Project = var.project
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
    Name    = "${var.env}-PR_RT"
    Env     = var.env
    Project = var.project
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



