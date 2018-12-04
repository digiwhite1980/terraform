resource "aws_db_instance" "db" {
	allocated_storage		= "${var.db_allocated_storage}"
	storage_type				= "${var.db_storage_type}"
	engine							= "${var.db_engine}"
	engine_version			= "${var.db_engine_version}"
	instance_class			= "${var.db_instance_class}"

	name								= "${var.db_name}"
	username						= "${var.db_username}"
	password						= "${var.db_password}"
	port								= "${var.db_port}"

	vpc_security_group_ids	= [ "${var.db_vpc_security_group_ids}" ]

	publicly_accessible			= "${var.db_publicly_accessible}"
	multi_az								= "${var.db_multi_az}"

	apply_immediately				= "${var.apply_immediately}"

	db_subnet_group_name		= "${var.db_subnet_group_name}"

	preferred_maintenance_window = "${var.preferred_maintenance_window}"

	tags 							= "${merge(var.tags, map("Name", "${var.db_name}"))}"
}
