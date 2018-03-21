resource "aws_nat_gateway" "gw" {
    allocation_id 	= "${element(var.eip_id, count.index)}"
    subnet_id 		  = "${element(var.subnet_id, count.index)}"
    count           = "${length(var.subnet_id)}"

    tags {
      Name          = "${var.name}"
      Subnet        = "${element(var.subnet_id, count.index)}"
    }
}