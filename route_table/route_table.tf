resource "aws_route_table" "route" {
    vpc_id 			= "${var.vpc_id}"

    route       = "${var.route}"

    tags {
        Name 		= "${var.name} ${var.project} ${var.environment}"
        Environment	= "${var.environment}"
    }
}