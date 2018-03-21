resource "aws_route_table" "route" {
    vpc_id 		        = "${var.vpc_id}"
    count               = "${length(var.gateway_id)}"

    route {
        cidr_block 	    = "${var.cidr_block}"
        nat_gateway_id 	= "${element(var.gateway_id, count.index)}"
    }

    tags {
        Name 		    = "${var.name} ${element(var.gateway_id, count.index)} ${var.project} ${var.environment}"
        Environment	    = "${var.environment}"
    }
}