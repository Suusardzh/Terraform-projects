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

##subnet_cidr_block01
variable "subnet_cidr_block_01" {
    default = "10.0.1.0/24"
    type = "string"
    description = "Cidr block for public-subnet01"
}

##subnet_cidr_block02
variable "subnet_cidr_block02" {
    default = "10.0.2.0/24"
    type = "string"
    description = "Cidr block for public-subnet02"
}

##subnet_cidr_block03
variable "subnet_cidr_block03" {
    default = "10.0.3.0/24"
    type = "string"
    description = "Cidr block for public-subnet03"
}

