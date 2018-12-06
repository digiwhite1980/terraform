resource "aws_security_group_rule" "security_group_rule" {

	cidr_blocks				= [ "${var.cidr_blocks}" ]
	description				= "${var.description}"
	
	from_port 				= "${var.from_port}"
	to_port 					= "${var.to_port}"
	protocol 				= "${var.protocol}"

	security_group_id		= "${var.security_group_id}"
}
