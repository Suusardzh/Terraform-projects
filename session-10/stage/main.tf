module "s3_module" {

    ### remote module
    source = "github.com/Suusardzh/Terraform-projects/modules/s3"

    env = "dev"
    
}
