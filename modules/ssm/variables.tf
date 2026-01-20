variable "role_name" {
  description = "Nome da role IAM para EC2 via SSM"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR da VPC (usado no SG do endpoint)"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets onde os endpoints SSM serão criados"
  type        = list(string)
}

variable "region" {
  description = "Região AWS"
  type        = string
}

variable "tags" {
  description = "Tags padrão"
  type        = map(string)
  default     = {}
}

