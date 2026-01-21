variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "cidr_block" {
  description = "Bloco CIDR da VPC"
  type        = string
}

variable "enable_dns_hostnames" {
  description = "Habilitar hostnames DNS na VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Habilitar suporte ao DNS na VPC"
  type        = bool
  default     = true
}

variable "create_igw" {
  description = "Define se o Internet Gateway deve ser criado"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Mapa de tags aplicadas aos recursos"
  type        = map(string)
  default     = {}
}
