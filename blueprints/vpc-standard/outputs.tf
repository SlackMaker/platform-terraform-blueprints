output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.subnet.subnet_ids
}

output "padrao_security_group_id" {
  value = module.security_group.security_group_id
}

