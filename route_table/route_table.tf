resource "aws_route_table" "route" {
    vpc_id 			= "${var.vpc_id}"

    route {
        cidr_block      = "${var.cidr_block}"
        nat_gateway_id  = "${var.gateway_id}"
    }

    tags {
        Name 		= "${var.name} ${var.project} ${var.environment}"
        Environment	= "${var.environment}"
    }
}