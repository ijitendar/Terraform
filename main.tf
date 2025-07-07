resource "aws_instance" "primary_ec2" {
  provider      = aws
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
}

resource "aws_instance" "secondary_ec2" {
  provider      = aws.secondary
  ami           = "ami-05ee755be0cd7555c"
  instance_type = "t2.micro"
}


