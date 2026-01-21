variable "key_name" {
  description = "Nome do key pair SSH para acesso à instância"
  type    = string
  default = null
}

variable "tags" {
  description = "Mapa de tags aplicadas aos recursos"
  type    = map(string)
  default = {}
}

variable "name" {
  description = "Nome da instância EC2"
  type = string
}

variable "ami_id" {
  description = "ID da AMI utilizada pela instância EC2"
  type = string
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type = string
}

variable "subnet_id" {
  description = "ID da subnet onde a instância será criada"
  type = string
}

variable "security_group_ids" {
  description = "Lista de IDs dos Security Groups associados à instância"
  type = list(string)
}

variable "iam_instance_profile_name" {
  description = "Nome do IAM Instance Profile associado à instância"
  type = string
}

variable "root_volume_size" {
  description = "Tamanho do volume root da instância em GB"
  type = number
  default = 20
}
