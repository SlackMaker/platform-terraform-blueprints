module "ec2_prod" {
  source = "../blueprints/ec2-standard"

  name          = "ec2-prod"
  subnet_id     = data.terraform_remote_state.network.outputs.private_subnet_id
  ami_id        = var.ami_id
  key_name      = var.key_name
  instance_type = "m6i.large"

  allowed_ssh_cidr = "10.0.0.0/16"

  tags = {
    Environment = "prod"
    Owner       = "infra"
  }
}

