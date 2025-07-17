output "subnet_ids" {
  value = [aws_subnet.public_a.id, aws_subnet.public_b.id]
}
