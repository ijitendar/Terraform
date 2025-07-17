output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}
