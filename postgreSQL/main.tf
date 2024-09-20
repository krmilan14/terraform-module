resource "aws_db_instance" "postgres" {
  identifier              = var.identifier
  engine                  = "postgres"
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.db_subnet_group.name
  vpc_security_group_ids  = var.vpc_security_group_ids
  publicly_accessible     = var.publicly_accessible
  backup_retention_period = var.backup_retention_period
  storage_type            = var.storage_type

  tags = {
    Name = var.identifier
  }

  depends_on = [
    aws_db_subnet_group.db_subnet_group
  ]
}

resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids
  tags = {
    Name = var.db_subnet_group_name
  }
}

