module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.bucket
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "var.instance_name"

  instance_type = var.instance_type
    ami = var.ami_id
    subnet_id = var.subnet_id
    
  tags = {
    name = "var.tag_name"
  }
}


