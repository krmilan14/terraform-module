# outputs.tf
output "db_instance_identifier" {
  description = "The RDS instance identifier"
  value       = aws_db_instance.mysql.id
}

output "db_endpoint" {
  description = "The connection endpoint for the RDS instance"
  value       = aws_db_instance.mysql.endpoint
}

output "db_port" {
  description = "The port the RDS instance is listening on"
  value       = aws_db_instance.mysql.port
}
