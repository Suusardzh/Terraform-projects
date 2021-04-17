terraform {
    backend "s3" {
        bucket = "aws-session-terraform-april-suusar"
        key = "dev/instance.tfstate"
        region = "us-east-1"

    }
}