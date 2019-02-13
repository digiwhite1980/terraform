resource "aws_route_table" "route" {
    vpc_id 			= "${var.vpc_id}"
    route {
        cidr_block 						= "${var.cidr_block}"
        vpc_peering_connection_id 	= "${var.vpc_peering_connection_id}"
    }

    tags {
        Name 		= "${var.name} ${var.project} ${var.environment}"
        Environment	= "${var.environment}"
    }
}
