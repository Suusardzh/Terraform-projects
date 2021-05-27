module "vpc_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/vpc"

    env = "dev"
    aws_vpc.first_vpc = "10.0.0.0/16"
    public_subnet_cidr_block_01 = "10.0.0.0/24"
    rt_cidr_block = "0.0.0.0/0"
    private_subnet_cidr_block = "10.0.2.0/24"
    pr_rt_cidr_block = "0.0.0.0/0"
    peer_owner_id = "204485688424"
    aws_vpc.id = "vpc-dc6b07a4"
    default_vpc_cidr = "172.31.0.0/16"

}

