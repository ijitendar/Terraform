variable "vpc_id" {}
variable "cidr_block" {}
variable "gateway_id" {}
variable "name" {}
variable "subnet_ids" {
  type = list(string)
}
