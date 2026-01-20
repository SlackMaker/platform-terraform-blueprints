variable "key_name" {
  description = "Nome do Key Pair"
  type        = string
}

variable "public_key_path" {
  description = "Caminho para a chave pública"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

