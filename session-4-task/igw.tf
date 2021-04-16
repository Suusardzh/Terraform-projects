###Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.first_vpc.id

  tags = {
    Name = "Internet_gateway"
    Env = var.env
    Project = "VPC"
  }
}

