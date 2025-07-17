module "ec2_instance" {
  source      = "./modules/ec2_instance"
  subnet_id   = module.vpc.subnet_ids[0]
  instance_type = "t3.micro"      
  ami_id       = "ami-0150ccaf51ab55a51"  
  
}


module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidr_a = "10.0.1.0/24"
  public_subnet_cidr_b = "10.0.2.0/24"
  az_a                 = "us-east-1a"
  az_b                 = "us-east-1b"
}

module "rds" {
  source            = "./modules/rds"
  subnet_ids        = module.vpc.subnet_ids
  db_identifier     = "mydbinstance"
  db_username       = "admin"
  db_password       = var.db_password   
  db_instance_class = "db.t3.micro"
}

