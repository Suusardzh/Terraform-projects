data "aws_vpc" "first_vpc"{
    default  = false
}

data "aws_subnet" "public_subnet-01" {
    vpc_id   =  data.aws_vpc.first_vpc.id
}

data "aws_ami" "amazon_linux2" {
    most_recent  = true
    owners    =  ["amazon"]
     
     filter {
         name  = "name"
         values = ["amzn2-ami-hvm-2.0*"]
     }
     filter {
         name  = "architecture"
         values = ["x86_64"]
     }
}

data "template_file" "webserver" {
    template = file ("userdata.sh")
    vars = {
        env = var.env
    }
}