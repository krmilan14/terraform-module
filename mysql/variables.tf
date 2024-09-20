# variables.tf
variable "allocated_storage" {
  description = "The amount of storage to allocate for the RDS instance"
  type        = number
  default     = 20
}

variable "storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
  default     = "gp2"
}

variable "engine_version" {
  description = "MySQL engine version"
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "identifier" {
  description = "The name of the database to create"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the subnet group"
  type        = list(string)
}

variable "subnet_group_name" {
  description = "Name of the DB subnet group"
  type        = string
  default     = "mysql-subnet-group"
}

variable "multi_az" {
  description = "Specifies if the RDS instance is Multi-AZ"
  type        = bool
  default     = false
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = false
}

variable "skip_final_snapshot" {
  description = "Skip final snapshot before deleting the RDS instance"
  type        = bool
  default     = true
}

variable "parameter_group_name" {
  description = "The name of the DB parameter group to associate with the RDS instance"
  type        = string
  default     = "default.mysql8.0"
}

variable "tags" {
  description = "Tags to assign to the resources"
  type        = map(string)
  default     = {}
}
