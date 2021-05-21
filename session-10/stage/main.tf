module "s3_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/ec2"

    env = "stage"
    
}
