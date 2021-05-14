variable "env"{
    type = string
    default = "dev"
    description = "Name of the environment"
}
variable "project" {
  default     = "wordpress"
  type        = string
  description = "name of the project"
}



variable "instance_type" {
    type = string
    default = "t2.micro"
}


##vpc_cidr_block
variable "vpc_cidr_block" {
  default     = "10.0.0.0/16"
  type        = string
  description = "Cidr block for first_vpc"
}

###subnet az zone
variable "subnet_az_zone01" {
  default = "us-east-1a"
  type = string
  description = "az zone for subnet01"
}

variable "subnet_az_zone02" {
  default = "us-east-1b"
  type = string
  description = "az zone for subnet02"
}
##private_subnet az_zone
variable "pr_subnet_az_zone02" {
  default = "us-east-1b"
  type = string
  description = "pr_az zone for subnet02"
}

variable "pr_subnet_az_zone01" {
  default = "us-east-1a"
  type = string
  description = "pr_az zone for subnet01"
}

##public_subnet_cidr_block
variable "public_subnet_cidr_block_01" {
  default     = "10.0.1.0/24"
  type        = string
  description = "Cidr block for public-subnet_01"
}
variable "public_subnet_cidr_block_02" {
  default     = "10.0.2.0/24"
  type        = string
  description = "Cidr block for public-subnet02"
}
variable "public_subnet_cidr_block_03" {
  default     = "10.0.3.0/24"
  type        = string
  description = "Cidr block for public-subnet_03"
}

##private_subnet_cidr_block
variable "private_subnet_cidr_block_01" {
  default     = "10.0.11.0/24"
  type        = string
  description = "Cidr block for private_subnet_01"
}
variable "private_subnet_cidr_block_02" {
  default     = "10.0.12.0/24"
  type        = string
  description = "Cidr block for private_subnet_02"
}
variable "private_subnet_cidr_block_03" {
  default     = "10.0.13.0/24"
  type        = string
  description = "Cidr block for private_subnet_03"
}