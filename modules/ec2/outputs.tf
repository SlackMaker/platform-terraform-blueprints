output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  description = "Public IP da instância"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  value = aws_instance.this.private_ip
}

