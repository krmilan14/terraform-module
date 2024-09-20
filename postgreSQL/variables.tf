variable "identifier" {
  description = "The name of the database instance."
  type        = string
}

variable "engine_version" {
  description = "The version of the database engine."
  type        = string
  default     = "14.4"
}

variable "instance_class" {
  description = "The instance type to use for the database."
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  description = "The amount of storage (in GB) to allocate for the database."
  type        = number
  default     = 20
}

variable "username" {
  description = "The username for the database."
  type        = string
}

variable "password" {
  description = "The password for the database."
  type        = string
  sensitive   = true
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the database."
  type        = list(string)
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the DB subnet group."
  type        = list(string)
}

variable "publicly_accessible" {
  description = "Whether the database should be publicly accessible."
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "The number of days to retain backups."
  type        = number
  default     = 7
}

variable "storage_type" {
  description = "The storage type for the database."
  type        = string
  default     = "gp2"
}
