variable "bucket_name" {
  description = "Nome do bucket S3 para armazenar o estado Terraform"
  type        = string
}

variable "dynamodb_table" {
  description = "Nome da tabela DynamoDB para bloqueios de estado"
  type        = string
}

variable "region" {
  description = "Região AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}
