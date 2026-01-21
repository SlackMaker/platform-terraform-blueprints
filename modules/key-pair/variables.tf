variable "key_name" {
  description = "Nome do Key Pair SSH"
  type        = string
}

variable "public_key_path" {
  description = "Caminho para a chave pública SSH"
  type        = string
}

variable "tags" {
  description = "Mapa de tags aplicadas ao Key Pair"
  type    = map(string)
  default = {}
}
