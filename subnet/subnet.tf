resource "aws_subnet" "subnet" {
    vpc_id 					= "${var.vpc_id}"
    cidr_block              = "${lookup(var.cidr_block, "avz.${count.index}")}"
    availability_zone		= "${element(var.availability_zone, count.index)}"
    count                   = "${length(var.availability_zone)}"

    map_public_ip_on_launch = "${var.map_public_ip}"

    tags                    = "${merge(var.tags,
                                    map("CIDR", "${lookup(var.cidr_block, "avz.${count.index}")}",
													 "AVZ", "${element(var.availability_zone, count.index)}"))}"
}
