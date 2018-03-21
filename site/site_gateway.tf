resource "aws_internet_gateway" "internet_gateway" {
    vpc_id					      = "${aws_vpc.vpc.id}"
    tags {
        Name 				      = "${var.project}_${var.environment}"
        Environment 		  = "${var.environment}"
    }
}

resource "aws_route" "route" {
	route_table_id 			    = "${aws_vpc.vpc.main_route_table_id}"
	destination_cidr_block	= "0.0.0.0/0"
	gateway_id 				      = "${aws_internet_gateway.internet_gateway.id}"
}
