terraform {
  backend "s3" {
    bucket = "aws-session-terraform-april-suusar"
    key    = "main.tfstate"
    region = "us-east-1"
    workspace_key_prefix = "session-11"
  }
}