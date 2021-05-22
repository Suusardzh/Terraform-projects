resource "aws_sqs_queue" "first_sqs" {
    name = "${terraform.workspace}-example-queue"
}





### terraform workspace list >>> list the workspace
### terraform workspace new NAME >> create new workspace
### terraform workspace select "nameofworkspace" change workspace