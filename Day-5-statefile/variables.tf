# Variables
variable "region" {
  default = "us-east-1"
}

variable "os" {
  description = "AMI ID"
  type        = string
}

variable "size" {
  description = "EC2 instance type"
  type        = string
}

variable "name" {
  description = "Name tag for resources"
  type        = string
}

variable "bucket_name" {
  description = "Unique name for the S3 bucket"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

