variable "env" {
  description = "Nome do ambiente (dev, hml, prod)"
  type = string
}

variable "cidr_block" {
  description = "Bloco CIDR da VPC"
  type = string
}

variable "subnet" {
  description = "Configuração da subnet padrão"
  type = object({
    cidr_block        = string
    availability_zone = string
    subnet_name       = string
  })
}

variable "tags" {
  description = "Mapa de tags padrão aplicadas aos recursos"
  type = map(string)
}

