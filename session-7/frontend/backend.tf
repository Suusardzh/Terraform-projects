terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "session-7/frontend.tfstate"
    region = "us-east-1"
  }
}