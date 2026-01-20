variable "sg_name" {
  description = "Nome do Security Group"
  type        = string
}

variable "description" {
  description = "Descrição do Security Group"
  type        = string
  default     = "Managed by Terraform"
}

variable "vpc_id" {
  description = "ID da VPC"
  type        = string
}

variable "ingress_rules" {
  description = "Regras de ingress"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = string
  }))
  default = []
}

variable "egress_rules" {
  description = "Regras de egress"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    description = string
  }))
  default = []
}

variable "tags" {
  description = "Tags para recursos"
  type        = map(string)
  default     = {}
}
