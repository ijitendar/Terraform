resource "aws_instance" "web" {
  ami           = var.os
  instance_type = var.size

  tags = {
    Name = var.name
  }
}
}

# S3 Bucket
resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name = var.name
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.name
  }
}

}
