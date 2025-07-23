output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = [
    module.public_subnet_1.subnet_id,
    module.public_subnet_2.subnet_id
  ]
}

output "private_subnets" {
  value = [
    module.private_subnet_1.subnet_id,
    module.private_subnet_2.subnet_id,
    module.private_subnet_3.subnet_id,
    module.private_subnet_4.subnet_id
  ]
}
