module "vpc_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/vpc"

    env = "prod"
    // ami = "ami-0518bb0e75d3619ca"
    // instance_type = "t2.micro"
    cidr_block = "10.0.0.0/0"
    
}
