terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "session-9/dev/main.tfstate"
    region = "us-east-1"
  }
}