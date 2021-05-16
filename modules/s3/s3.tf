resource "aws_s3_bucket" "main" {
  bucket = "${var.env}-terraform-session-suusar"
  acl    = "private"

  tags = local.tags
  
}

## Naming convention: cloud provider - project name - tier - env
## example: aws-wordpress-frontend-dev

resource "aws_s3_bucket_public_access_block" "main01" {
  bucket = aws_s3_bucket.main01.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}