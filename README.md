# terraform-module

Usage For Aurora
  # Aurora RDS Module

This module provisions an Amazon Aurora RDS cluster using Terraform. Below is an example configuration for setting up the Aurora RDS with the specified parameters.

## Usage

```hcl
module "aurora_rds" {
  source                 = "/home/milan-kumar/Desktop/Challenge/module/aurora"
  cluster_identifier     = "my-aurora-cluster"
  engine_version         = "8.0.mysql_aurora.3.05.2"
  master_username        = "admin"
  master_password        = "password"
  database_name          = "conexusdb"
  vpc_security_group_ids = [module.mysql_security_group.security_group_id]
  subnet_ids             = module.vpc.private_subnets
  db_subnet_group_name   = "db-subnet-grp"
  instance_count         = 2
  instance_class         = "db.r5.large"
  publicly_accessible    = false
  tags = {
    Name = "AuroraRDSCluster"
  }
}

