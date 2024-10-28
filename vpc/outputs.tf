output "vpc_id" {
  value = aws_vpc.dev_vpc_proj_1.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "public_subnet_cidr_blocks" {
  value = aws_subnet.public[*].cidr_block
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "private_subnet_cidr_blocks" {
  value = aws_subnet.private[*].cidr_block
}

output "availability_zones" {
  value = aws_subnet.public[*].availability_zone
}
