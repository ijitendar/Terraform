module "jeet" {
  source = "../Terraform-Re-usable-Templates"
  os              = var.os
  size            = var.size
  name            = var.name
  bucket_name     = var.bucket_name
  vpc_cidr_block  = var.vpc_cidr_block
}
