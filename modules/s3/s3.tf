resource "aws_s3_bucket" "s3-suusar" {
  bucket = "${var.env}-terraform-session-10-module"
  acl    = "private"

  tags = local.tags
  
}

## Naming convention: cloud provider - project name - tier - env
## example: aws-wordpress-frontend-dev

resource "aws_s3_bucket_public_access_block" "s3-suusar" {
  bucket = aws_s3_bucket.s3-suusar.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}