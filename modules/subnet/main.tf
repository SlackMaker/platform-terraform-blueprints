resource "aws_subnet" "main" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    var.tags,
    {
      Name = var.subnet_name
    }
  )
}

resource "aws_route_table" "main" {
  count  = var.create_route_table ? 1 : 0
  vpc_id = var.vpc_id

  tags = merge(
    var.tags,
    {
      Name = "${var.subnet_name}-rt"
    }
  )
}

resource "aws_route_table_association" "main" {
  count          = var.create_route_table ? 1 : 0
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.main[0].id
}

resource "aws_route" "internet" {
  count                  = var.create_internet_route && var.create_route_table ? 1 : 0
  route_table_id         = aws_route_table.main[0].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gateway_id
}
