resource "aws_elb" "elb" {
	name 						= "${var.name}"
	################################################################################
	# We choose to use subnets instead of availability zones
	################################################################################
	#availability_zones			= [ "${var.availability_zones}" ]

	subnets						= [ "${var.lb_subnet_ids}" ]

	access_logs {
		bucket					= "${var.elb_bucket}"
		bucket_prefix			= "${var.name}"
		interval				= "${var.lb_accesslog_interval}"
	}

	listener {
		instance_port			= "${var.instance_port}"
		instance_protocol		= "${var.instance_protocol}"
		lb_port					= "${var.lb_port}"
		lb_protocol				= "${var.lb_protocol}"
		ssl_certificate_id		= "${var.ssl_arn}"
	}

	health_check {
		healthy_threshold		= "${var.check_healthy_threshold}"
		unhealthy_threshold		= "${var.check_unhealthy_threshold}"
		timeout					= "${var.check_timeout}"
		target					= "${var.health_target}"
		interval				= "${var.check_interval}"
	}

	internal 					= "${var.internal}"

	security_groups				= [ "${var.lb_security_group_ids}" ]

	instances					= [ "${var.lb_instances}" ]
	idle_timeout				= "${var.lb_idle_timeout}"
	connection_draining_timeout	= "${var.lb_connection_draining_timeout}"
	cross_zone_load_balancing	= "${var.lb_cross_zone_load_balancing}"
	connection_draining			= "${var.lb_connection_draining}"

	tags 												= "${merge(var.tags, map("Name", format("%s", var.name)))}"

	provisioner "local-exec" {
		command = <<EOT
			${var.local_exec}
EOT
	}	
}
