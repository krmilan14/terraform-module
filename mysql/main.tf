# main.tf
resource "aws_db_subnet_group" "mysql_subnet_group" {
  name       = var.subnet_group_name
  subnet_ids = var.subnet_ids

  tags = var.tags
}

resource "aws_db_instance" "mysql" {
  identifier = var.identifier
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = "mysql"
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  db_subnet_group_name = aws_db_subnet_group.mysql_subnet_group.name
  multi_az             = var.multi_az
  publicly_accessible  = var.publicly_accessible
  skip_final_snapshot  = var.skip_final_snapshot

  tags = var.tags
}
