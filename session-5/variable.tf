variable "env" {
    default = "dev"
    type = string
    description = "Name of the environment"
}

variable "instance_type" {
    default = "t2.micro"
    type = string
    description = "this is an instance type"
}