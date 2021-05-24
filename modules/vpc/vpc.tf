resource "aws_vpc" "first_vpc" {
  cidr_block = var.cidr_block

  tags = local.tags

}
## Naming convention: cloud provider - project name - tier - env
## example: aws-wordpress-frontend-dev

