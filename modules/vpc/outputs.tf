output "vpc_id" {
  description = "ID da VPC criada"
  value = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "Bloco CIDR associado à VPC"
  value = aws_vpc.this.cidr_block
}

output "igw_id" {
  description = "ID do Internet Gateway associado à VPC"
  value       = aws_internet_gateway.this.id
}

output "cidr_block" {
  description = "Bloco CIDR da VPC (output redundante)"
  value = aws_vpc.this.cidr_block
}

