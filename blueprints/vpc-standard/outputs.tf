output "vpc_id" {
  description = "ID da VPC criada pelo blueprint vpc-standard"
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Lista de IDs das subnets públicas"
  value = module.subnet.subnet_ids
}

output "padrao_security_group_id" {
  description = "ID do Security Group padrão do ambiente"
  value = module.security_group.security_group_id
}
