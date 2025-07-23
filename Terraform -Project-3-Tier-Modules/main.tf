# Provider
provider "aws" {
  region = var.aws_region
}

# VPC
module "vpc" {
  source               = "./modules/vpc"
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  name                 = "JEET"
}

# Public Subnets
module "public_subnet_1" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.1.0/24"
  az                      = "${var.aws_region}a"
  map_public_ip_on_launch = true
  name                    = "public-1"
}

module "public_subnet_2" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.2.0/24"
  az                      = "${var.aws_region}b"
  map_public_ip_on_launch = true
  name                    = "public-2"
}

# Private Subnets (App + Data)
module "private_subnet_1" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.3.0/24"
  az                      = "${var.aws_region}a"
  map_public_ip_on_launch = false
  name                    = "private-subnet-1"
}

module "private_subnet_2" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.4.0/24"
  az                      = "${var.aws_region}b"
  map_public_ip_on_launch = false
  name                    = "private-subnet-2"
}

module "private_subnet_3" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.5.0/24"
  az                      = "${var.aws_region}a"
  map_public_ip_on_launch = false
  name                    = "private-subnet-3"
}

module "private_subnet_4" {
  source                  = "./modules/subnet"
  vpc_id                  = module.vpc.vpc_id
  cidr_block              = "10.0.6.0/24"
  az                      = "${var.aws_region}b"
  map_public_ip_on_launch = false
  name                    = "private-subnet-4"
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "JEET-igw"
  }
}

# Public Route Table
module "public_route_table" {
  source     = "./modules/route-table"
  vpc_id     = module.vpc.vpc_id
  cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
  name       = "RT-Public"
  subnet_ids = [
    module.public_subnet_1.subnet_id,
    module.public_subnet_2.subnet_id
  ]
}

# NAT Gateway for Private Subnets
resource "aws_eip" "nat_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = module.public_subnet_1.subnet_id

  tags = {
    Name = "Nat-private"
  }

  depends_on = [aws_internet_gateway.igw]
}
