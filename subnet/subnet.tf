resource "aws_subnet" "subnet" {
    vpc_id 					= "${var.vpc_id}"
    cidr_block              = "${lookup(var.cidr_block, "${var.environment}.${element(var.availability_zone, count.index)}")}"
    availability_zone		= "${element(var.availability_zone, count.index)}"
    count                   = "${length(var.availability_zone)}"

    map_public_ip_on_launch = "${var.map_public_ip}"

    tags {
        Name				= "${var.name} ${element(var.availability_zone, count.index)} ${var.project} ${var.environment}"
        Environment			= "${var.environment}"
        AVZ                 = "${element(var.availability_zone, count.index)}"
    }
}