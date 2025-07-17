variable "subnet_ids" {
  description = "List of subnet IDs for RDS DB subnet group"
  type        = list(string)
}

variable "db_identifier" {
  description = "RDS instance identifier"
  type        = string
}

variable "db_username" {
  description = "Username for RDS"
  type        = string
}

variable "db_password" {
  description = "Password for RDS"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "Instance class for RDS"
  type        = string
}
