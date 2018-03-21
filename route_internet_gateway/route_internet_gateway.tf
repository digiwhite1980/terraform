resource "aws_route" "internet" {
    route_table_id 				= "${var.route_table_id}"
    destination_cidr_block 		= "${var.cidr_block}"
    gateway_id				 	= "${var.gateway_id}"
}
