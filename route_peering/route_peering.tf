resource "aws_route" "route" {
  count                     = "${length(var.route_table_id)}"

	route_table_id					  = "${element(var.route_table_id, count.index)}"
	
  destination_cidr_block		= "${var.destination_cidr_block}"
	vpc_peering_connection_id	= "${var.gateway_id}"
}
