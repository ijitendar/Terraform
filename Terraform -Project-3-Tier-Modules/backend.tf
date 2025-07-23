terraform {
  backend "s3" {
    bucket         = "project3tierbucket730amtf"
    key            = "network/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    encrypt        = true
  }
}
