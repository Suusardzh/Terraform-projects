terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "session-8-task/ec2.tfstate"
    region = "us-east-1"
  }
}