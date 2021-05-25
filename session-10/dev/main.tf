module "vpc_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/vpc"

    env = "dev"
    cidr_block = "10.0.0.0/16"
    public_subnet_cidr_block_01 = "10.0.0.0/24"
}

