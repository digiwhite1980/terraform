resource "aws_spot_instance_request" "instance" {
	ami 									= "${var.aws_ami}"
	instance_type 				= "${var.aws_instance_type}"
	subnet_id 						= "${var.aws_subnet_id}"
	private_ip 						= "${var.private_ip}"
	
	tags              		= "${merge(var.tags, 
																		map(
																				"Name", "${var.instance_name}",
																				"Environment", "${var.environment}",
																			))}"

	count 								= "${var.count}"
	
	spot_price						= "${var.spot_price}"
	spot_type							= "${var.spot_type}"
	wait_for_fulfillment	= "${var.wait_for_fulfillment}"

	root_block_device {
		delete_on_termination		= "${var.root_block_device_delete}"
		volume_size					= "${var.root_block_device_size}"
		volume_type					= "${var.root_block_device_type}"
	}

	availability_zone 		= "${var.availability_zone}"

	connection {
		type 								= "ssh"
		############################################################################
		# Default user is different per AMI instance
		############################################################################
		user 								= "${var.ssh_user}"		
		private_key 				= "${file(var.ssh_pri_key)}"
		agent 							= "${var.connection_agent}"
		host 								= "${aws_instance.instance.public_ip}"
	}

	iam_instance_profile	= "${var.iam_instance_profile}"

	user_data_base64			= "${var.user_data_base64}"

	vpc_security_group_ids = [ "${var.security_groups_ids}" ]

	key_name 							 = "${var.ssh_name_key}"

	associate_public_ip_address = "${var.associate_public_ip_address}"
}