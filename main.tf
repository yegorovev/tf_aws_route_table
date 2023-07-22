resource "aws_route_table" "rt" {
  count = length(var.route_tables)

  vpc_id = var.vpc_id
  tags = {
    Name = var.route_tables[count.index].name
  }
}
