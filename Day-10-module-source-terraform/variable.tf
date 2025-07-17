variable "bucket" {
    type = string
     default = "t3.micro"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  
}

variable "tag_name" {
  description = "Name tag for the instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to launch the EC2 instance in"
  type        = string
}
variable "ami_id" {
  description = "AMI ID to use for launching the EC2 instance"
  type        = string
}