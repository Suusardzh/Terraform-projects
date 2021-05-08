resource "aws_s3_bucket" "main" {
  bucket = "${var.env}-terraform-session-suusar"
  acl    = "private"

  tags = local.tags
  
}

## Naming convention: cloud provider - project name - tier - env
## example: aws-wordpress-frontend-dev