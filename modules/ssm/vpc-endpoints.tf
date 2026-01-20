locals {
  services = [
    "ssm",
    "ec2messages",
    "ssmmessages"
  ]
}

resource "aws_vpc_endpoint" "this" {
  for_each = toset(local.services)

  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.${each.key}"
  vpc_endpoint_type   = "Interface"

  subnet_ids          = var.subnet_ids
  security_group_ids = [aws_security_group.endpoints.id]

  private_dns_enabled = true
}

