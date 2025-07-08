resource "aws_instance" "example" {
  instance_type = var.instance_type
  ami           = var.ami_id

  tags = {
    Name = "day3-instance"
  }
}
