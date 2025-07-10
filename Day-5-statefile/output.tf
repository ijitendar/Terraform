# Output the EC2 instance public IP
output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

# Output the EC2 instance ID
output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

# Output the EC2 instance type
output "instance_type" {
  description = "The instance type of the EC2"
  value       = aws_instance.web.instance_type
}

# Output the S3 bucket name
output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = aws_s3_bucket.name.id
}

# Optional: Output the S3 bucket ARN
output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.name.arn
}

