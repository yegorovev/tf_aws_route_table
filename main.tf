resource "aws_route_table" "rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.name
  }
}

resource "aws_route_table_association" "rt_association" {
  count          = var.subnet_id || var.gateway_id ? 1 : 0
  route_table_id = aws_route_table.rt.id
  subnet_id      = var.subnet_id
  gateway_id     = var.gateway_id
}

