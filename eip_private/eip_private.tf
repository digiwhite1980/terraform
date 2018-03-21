resource "aws_eip" "eip" {
	vpc							= "${var.vpc}"

	instance					= "${var.instance_id}"
	associate_with_private_ip 	= "${var.private_ip}"
}
