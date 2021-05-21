module "s3_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/ec2"

    env = "prod"
    ami = "ami-0518bb0e75d3619ca"
    instance_type = "t2.micro"
    
}
