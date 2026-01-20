output "bastion_public_ip" {
  description = "Public IP do Bastion Host"
  value       = module.bastion.public_ip
}

