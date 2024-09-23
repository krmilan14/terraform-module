output "cluster_endpoint" {
  description = "Aurora cluster endpoint"
  value       = aws_rds_cluster.aurora_cluster.endpoint
}

output "reader_endpoint" {
  description = "Aurora reader endpoint"
  value       = aws_rds_cluster.aurora_cluster.reader_endpoint
}


output "db_subnet_group_name" {
  description = "Name of the DB Subnet Group"
  value       = aws_db_subnet_group.aurora_subnet_group.name
}
