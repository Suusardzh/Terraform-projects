##vpc id 
output "vpc_id" {
  value = aws_vpc.custom_vpc.id
}
##public-subnet-id
output "public-subnet_id-01" {
  value = aws_subnet.public_subnet-01.id
}

output "public-subnet_id-02" {
  value = aws_subnet.public_subnet-02.id
}

output "public-subnet_id-03" {
  value = aws_subnet.public_subnet-03.id
}

##public rt id
output "public-route-table" {
  value = aws_route_table.pub_rt.id
}

##igw id
output "Internet_gateway" {
  value = aws_internet_gateway.igw.id
}

##private-subnet-id
output "private-subnet_id-01" {
  value = aws_subnet.private_subnet-01.id
}

output "private-subnet_id-02" {
  value = aws_subnet.private_subnet-02.id
}

output "private-subnet_id-03" {
  value = aws_subnet.private_subnet-03.id
}

