resource "aws_instance" "web" {
  ami = var.os #linux
  instance_type = var.size



tags =   {
    name = var.name
}

}

resource "aws_s3_bucket" "name" {
  bucket = var.name
  
}