terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "session-8/rds.tfstate"
    region = "us-east-1"
  }
}