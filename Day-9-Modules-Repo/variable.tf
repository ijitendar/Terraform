variable "bucket" {
  type = object({
    name = string
  })
}
variable "acl" {
  description = "The ACL to apply to the S3 bucket"
  type        = string
  default     = "private" # or "public-read", depending on your use case
}