output "vpc_id"{
    value = aws_vpc.first_vpc.id
}
 output "public-subnet_id-01" {
     value = aws_subnet.public_subnet-01.id
 }

  output "public-subnet_id-02" {
     value = aws_subnet.public_subnet-02.id
 }

 output "public-subnet_id-03" {
     value = aws_subnet.public_subnet-03.id
 }

 output "public-route-table" {
     value = aws_route_table.public.id
 }

 output "Internet_gateway" {
     value = aws_internet_gateway.igw.id
 }