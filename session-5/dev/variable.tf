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

variable "web_sg_tcp_ports" {
    type = list(string)
    description = "this is a sg_ports"
}

variable "web_sg_tcp_ports_cidr" {
    type = list(string)
}