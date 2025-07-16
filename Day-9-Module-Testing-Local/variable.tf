variable "os" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "size" {
  description = "Instance type for EC2"
  type        = string
  default     = "t2.micro"
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
}
