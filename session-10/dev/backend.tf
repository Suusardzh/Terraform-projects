terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "session-10/dev/main.tfstate"
    region = "us-east-1"
  }
}