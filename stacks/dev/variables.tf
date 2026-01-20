variable "ami_id" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2 - us-east-1
}

variable "key_name" {
  description = "Chave SSH"
  type        = string
}

