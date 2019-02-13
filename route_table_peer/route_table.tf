resource "aws_route_table" "route" {
    vpc_id 		        = "${var.vpc_id}"
    count               = "${var.count}"

    route {
        cidr_block 	    				= "${var.cidr_block}"
        vpc_peering_connection_id 	= "${element(var.gateway_id, count.index)}"
    }

    tags {
        Name 		    = "${var.name} ${element(var.gateway_id, count.index)} ${var.project} ${var.environment}"
        Environment	    = "${var.environment}"
    }
}
