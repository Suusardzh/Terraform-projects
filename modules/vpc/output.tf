##vpc id 
output "vpc_id" {
  value = aws_vpc.first_vpc.id
}
##public-subnet-id
output "public-subnet_id-01" {
  value = aws_subnet.public_subnet-01.id
}