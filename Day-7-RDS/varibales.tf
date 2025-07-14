variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
}

variable "az_1" {
  description = "AZ for public subnet"
  type        = string
}

variable "az_2" {
  description = "AZ for private subnet"
  type        = string
}


variable "db_username" {
  description = "RDS admin username"
  type        = string
}

variable "db_password" {
  description = "RDS admin password"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Initial RDS database name"
  type        = string
}



