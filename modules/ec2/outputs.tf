output "instance_id" {
  description = "ID da instância EC2"
  value = aws_instance.this.id
}

output "public_ip" {
  description = "Endereço IP público da instância EC2"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "Endereço IP privado da instância EC2"
  value = aws_instance.this.private_ip
}

