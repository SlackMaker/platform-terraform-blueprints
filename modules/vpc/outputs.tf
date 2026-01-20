output "vpc_id" {
  value = aws_vpc.this.id
}

output "vpc_cidr" {
  value = aws_vpc.this.cidr_block
}

output "igw_id" {
  description = "ID do Internet Gateway"
  value       = aws_internet_gateway.this.id
}

output "cidr_block" {
  value = aws_vpc.this.cidr_block
}

