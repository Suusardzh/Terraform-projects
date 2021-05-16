module "ec2_module" {
    source = "../../modules/ec2"

    env = "dev"
    instance_type = "t2.micro"
    ami = "ami-0518bb0e75d3619ca"

}
