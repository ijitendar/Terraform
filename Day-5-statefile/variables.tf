variable "os" {
  type        = string
  default     = "ami-05ffe3c48a9991133"
  description = "This is my AMI ID"
}

variable "size" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  type = string
}
