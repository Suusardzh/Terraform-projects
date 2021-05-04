
output "rds_db_name" {
  value = aws_db_instance.rds.name
}

output "rds_db_username" {
  value = aws_db_instance.rds.username
}


output "rds_password" {
  value = random_password.password.result
}


output "rds_db_endpoint" {
  value = aws_db_instance.rds.address
}

output "rds_sg" {
  value = aws_security_group.rds_sg.id
}