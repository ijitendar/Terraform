resource "aws_instance" "name" {
  ami           = "ami-08a6efd148b1f7504"
  instance_type = "t2.nano"

  tags = {
    Name = "day-4-instance"
  }
}
resource "aws_s3_bucket" "name" {
bucket = "jitendarcreatedthis-test"
}
