resource "aws_elb" "elb" {
	name 												= "${var.name}"
	################################################################################
	# We choose to use subnets instead of availability zones
	################################################################################
	#availability_zones			= [ "${var.availability_zones}" ]

	subnets											= [ "${var.subnet_ids}" ]
	tags 												= "${var.tags}"

	access_logs 								= "${var.access_logs}"

	listener 										= "${var.listener}"

	health_check								= "${var.health_check}"

	internal										= "${var.internal}"

	security_groups							= [ "${var.security_group_ids}" ]

	idle_timeout								= "${var.lb_idle_timeout}"
	connection_draining_timeout	= "${var.lb_connection_draining_timeout}"
	cross_zone_load_balancing		= "${var.lb_cross_zone_load_balancing}"
	connection_draining					= "${var.lb_connection_draining}"
}
