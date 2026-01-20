output "subnet_ids" {
  description = "Lista de IDs das subnets"
  value       = aws_subnet.main[*].id
}

output "subnet_cidr" {
  description = "CIDR block da subnet"
  value       = aws_subnet.main.cidr_block
}

output "route_table_id" {
  description = "ID da route table"
  value       = try(aws_route_table.main[0].id, null)
}
