module "ec2_module" {
    ### local module
    source = "../../modules/ec2"
     ### variables value
    env = "qa"
    instance_type = "t2.micro"
    ami = "ami-0518bb0e75d3619ca"

}
