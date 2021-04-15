## env
variable "env" {
    default = "dev"
    type = "string"
    description = "Name of the environment"
}
##vpc_cidr_block
variable "vpc_cidr_block" {
    default = "10.0.0.0/16"
    type = "string"
    description = "Cidr block for first_vpc"
}

##public_subnet_cidr_block01
variable "public_subnet_cidr_block_01" {
    default = "10.0.1.0/24"
    type = "string"
    description = "Cidr block for public-subnet_01"
}

##public_subnet_cidr_block02
variable "public_subnet_cidr_block_02" {
    default = "10.0.2.0/24"
    type = "string"
    description = "Cidr block for public-subnet02"
}

##public_subnet_cidr_block03
variable "public_subnet_cidr_block_03" {
    default = "10.0.3.0/24"
    type = "string"
    description = "Cidr block for public-subnet_03"
}

##private_subnet_cidr_block01
variable "private_subnet_cidr_block_01" {
    default = "10.0.11.0/24"
    type = "string"
    description = "Cidr block for private_subnet_01"
}

##private_subnet_cidr_block01
variable "private_subnet_cidr_block_02" {
    default = "10.0.12.0/24"
    type = "string"
    description = "Cidr block for private_subnet_02"
}

##private_subnet_cidr_block01
variable "private_subnet_cidr_block_03" {
    default = "10.0.13.0/24"
    type = "string"
    description = "Cidr block for private_subnet_03"
}
