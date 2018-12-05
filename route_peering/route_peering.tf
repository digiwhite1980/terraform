resource "aws_route" "route" {
	route_table_id					= "${var.route_table_id}"
	destination_cidr_block		= "${var.destination_cidr_block}"
	vpc_peering_connection_id	= "${var.vpc_peering_connection_id}"

	tags								= "${merge(var.tags, map("Dest CIDR", "${var.destination_cidr_block}", "Peer ID", "${var.vpc_peering_connection_id}"))}"
}
