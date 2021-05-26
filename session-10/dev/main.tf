module "vpc_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/vpc"

    env = "dev"
    cidr_block = "10.0.0.0/16"
    public_subnet_cidr_block_01 = "10.0.0.0/24"
    rt_cidr_block = "0.0.0.0/0"
    private_subnet_cidr_block = "10.0.1.0/24"
    pr_rt_cidr_block = "0.0.0.0/0"
}

