############################
# Blueprint VPC Standard  #
############################
module "vpc" {
  source = "../../modules/vpc"

  vpc_name   = "${var.env}-vpc"
  cidr_block = var.cidr_block
  tags       = var.tags
}

############################
# Subnet padrão da VPC    #
############################
module "subnet" {
  source = "../../modules/subnet"

  vpc_id            = module.vpc.vpc_id
  cidr_block        = var.subnet.cidr_block
  availability_zone = var.subnet.availability_zone
  subnet_name       = var.subnet.subnet_name
  tags              = var.tags
}

############################
# Security Group padrão   #
############################
module "security_group" {
  source = "../../modules/security-group"

  sg_name     = "${var.env}-default-sg"
  description = "Default SG"
  vpc_id      = module.vpc.vpc_id

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "SSH access"
    }
  ]

  tags = var.tags
}

