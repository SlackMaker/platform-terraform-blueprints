#########################################
# STACK DEV - MAIN.TF
#########################################

# --------- VARS / ENV ---------
variable "env" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}

# --------- PROVIDER ---------
provider "aws" {
  region = var.region
}

# --------- VPC ---------
module "vpc" {
  source = "../../modules/vpc"

  vpc_name   = "${var.env}-vpc"
  cidr_block = "10.10.0.0/16"
  tags = {
    Environment = var.env
    Project     = "PadraoAWS"
    ManagedBy   = "Terraform"
  }
}

# --------- SUBNETS ---------
module "subnet" {
  source = "../../modules/subnet"

  vpc_id                  = module.vpc.vpc_id
  subnet_name             = "${var.env}-subnet-public"
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true
  create_route_table       = true
  create_internet_route    = true
  internet_gateway_id      = module.vpc.igw_id
  tags = {
    Environment = var.env
    Project     = "PadraoAWS"
  }
}

# --------- SECURITY GROUPS ---------
module "security_group_bastion" {
  source      = "../../modules/security-group"
  sg_name     = "${var.env}-bastion-sg"
  description = "Bastion security group"
  vpc_id      = module.vpc.vpc_id

  ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.10.0.0/16"]
    description = "SSH internal only (emergency)"
  }
]

  egress_rules = [
  {
    description = "Allow outbound only inside VPC (SSM endpoints)"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [module.vpc.cidr_block]
  }
]

  tags = {
    Environment = var.env
    Project     = "PadraoAWS"
  }
}

#---------------SSM--------------
module "ssm" {
  source     = "../../modules/ssm"
  role_name  = "bastion-ssm"
  region     = var.region
  vpc_id     = module.vpc.vpc_id
  vpc_cidr   = module.vpc.cidr_block
  subnet_ids = module.subnet.subnet_ids

  tags = {
    Project     = "PadraoAWS"
    Environment = "dev"
  }
}

# --------- BASTION HOST ---------
module "bastion" {
  source = "../../modules/ec2"

  name               = "${var.env}-bastion"
  ami_id             = data.aws_ami.amazon_linux.id
  instance_type      = "t3.micro"
  subnet_id          = module.subnet.subnet_ids[0]
  security_group_ids = [module.security_group_bastion.security_group_id]

  iam_instance_profile_name = module.ssm.instance_profile_name
  key_name = null

  root_volume_size = 30

  tags = {
    Environment = var.env
    Project     = "PadraoAWS"
    Role        = "bastion"
  }
}


# --------- DATA SOURCES ---------
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# --------- OUTPUTS ---------
output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "subnet_ids" {
  value       = module.subnet.subnet_ids
  description = "List of subnet IDs"
}

output "security_group_id" {
  value       = module.security_group_bastion.security_group_id
  description = "Bastion SG ID"
}

