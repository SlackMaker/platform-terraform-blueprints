variable "vpc_name" {
  description = "Nome da VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block da VPC"
  type        = string
}

variable "enable_dns_hostnames" {
  description = "Habilitar DNS hostnames"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Habilitar DNS support"
  type        = bool
  default     = true
}

variable "create_igw" {
  description = "Criar Internet Gateway"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags para recursos"
  type        = map(string)
  default     = {}
}
