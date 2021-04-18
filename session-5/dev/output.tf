output "ec2_public_ip"{
    value = aws_instance.first_ec2.public_ip
}
 output "ec2_name" {
     value = aws_instance.first_ec2.ami
 }