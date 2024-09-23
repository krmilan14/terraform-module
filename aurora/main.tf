resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = "${var.cluster_identifier}-subnet-group"
  description = "Subnet group for Aurora RDS cluster ${var.cluster_identifier}"

  subnet_ids = var.subnet_ids

  tags = merge(var.tags, { Name = "${var.cluster_identifier}-subnet-group" })
}


resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier      = var.cluster_identifier
  engine                  = "aurora-mysql"
  engine_version          = var.engine_version
  master_username         = var.master_username
  master_password         = var.master_password
  database_name           = var.database_name
  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  vpc_security_group_ids  = var.vpc_security_group_ids
  db_subnet_group_name    = aws_db_subnet_group.aurora_subnet_group.name
  apply_immediately       = true

  tags = var.tags
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  count                = var.instance_count
  identifier           = "${var.cluster_identifier}-instance-${count.index + 1}"
  cluster_identifier   = aws_rds_cluster.aurora_cluster.id
  instance_class       = var.instance_class
  engine               = aws_rds_cluster.aurora_cluster.engine
  engine_version       = aws_rds_cluster.aurora_cluster.engine_version
  publicly_accessible  = var.publicly_accessible
  db_subnet_group_name = aws_rds_cluster.aurora_cluster.db_subnet_group_name

  tags = var.tags
}
