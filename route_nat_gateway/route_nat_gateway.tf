resource "aws_route" "nat" {
  count                     = "${length(var.route_table_id)}"

  route_table_id            = "${element(var.route_table_id, count.index)}"

  destination_cidr_block 	  = "${var.destination_cidr_block}"
  nat_gateway_id				    = "${element(var.gateway_id, count.index)}"
}