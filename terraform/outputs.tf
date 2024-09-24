output "public_subnet_sg_id" {
  value = aws_security_group.public_subnet_sg.id
}

output "private_subnet_sg_id" {
  value = aws_security_group.private_subnet_sg.id
}

output "rds_endpoint" {
  value = aws_db_instance.rds-lanchonete.endpoint
}

output "rds_aws_instance_identifier" {
  value = aws_db_instance.rds-lanchonete.identifier
}

output "aws_security_group_rds" {
  value = aws_security_group.sg-rds.id
}