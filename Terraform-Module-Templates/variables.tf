variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "Access control list for the bucket"
  type        = string
  default     = "private"
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}

