output "s3_bucket_name" {
  description = "Nome do bucket S3 usado para armazenar o Terraform state"
  value       = aws_s3_bucket.terraform_state.bucket
}

output "dynamodb_table_name" {
  description = "Nome da tabela DynamoDB usada para lock do Terraform"
  value       = aws_dynamodb_table.terraform_lock.name
}
