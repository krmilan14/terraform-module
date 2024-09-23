variable "cluster_identifier" {
  description = "Identifier for the Aurora cluster"
  type        = string
}

variable "engine_version" {
  description = "Aurora database engine version"
  type        = string
  default     = "5.6.10a" # Example for Aurora MySQL, update for your needs
}

variable "master_username" {
  description = "Master database username"
  type        = string
}

variable "master_password" {
  description = "Master database password"
  type        = string
}

variable "database_name" {
  description = "The name of the default database to create"
  type        = string
}

variable "backup_retention_period" {
  description = "Number of days to retain backups"
  type        = number
  default     = 7
}

variable "preferred_backup_window" {
  description = "Preferred backup window"
  type        = string
  default     = "07:00-09:00"
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate with the cluster"
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
  type        = string
}

variable "instance_count" {
  description = "Number of instances in the Aurora cluster"
  type        = number
  default     = 2
}

variable "instance_class" {
  description = "Instance class for the Aurora cluster instances"
  type        = string
  default     = "db.r5.large"
}

variable "publicly_accessible" {
  description = "Whether the DB instance is publicly accessible"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}


variable "subnet_ids" {
  description = "List of subnet IDs for the DB Subnet Group"
  type        = list(string)
}
