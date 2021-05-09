terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "review/backend.tfstate"
    region = "us-east-1"
  }
}