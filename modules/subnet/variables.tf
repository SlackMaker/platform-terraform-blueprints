variable "subnet_name" {
  description = "Nome da subnet"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block da subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Mapear IP público no launch"
  type        = bool
  default     = false
}

variable "create_route_table" {
  description = "Criar route table"
  type        = bool
  default     = true
}

variable "create_internet_route" {
  description = "Criar rota para internet"
  type        = bool
  default     = false
}

variable "internet_gateway_id" {
  description = "ID do Internet Gateway associado à VPC"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags para recursos"
  type        = map(string)
  default     = {}
}
