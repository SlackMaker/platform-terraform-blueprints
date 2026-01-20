variable "env" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "subnet" {
  type = object({
    cidr_block        = string
    availability_zone = string
    subnet_name       = string
  })
}

variable "tags" {
  type = map(string)
}

