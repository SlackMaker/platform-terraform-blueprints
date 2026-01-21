output "key_name" {
  description = "Nome do Key Pair SSH criado na AWS"
  value = aws_key_pair.this.key_name
}

