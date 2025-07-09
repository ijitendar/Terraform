resource "aws_instance" "name" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.nano"

  tags = {
    Name = "day-4-instance"
  }
}
resource "aws_s3_bucket" "name" {
bucket = "jitendarcreatedthis-test"
}
